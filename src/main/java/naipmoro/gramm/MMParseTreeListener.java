package naipmoro.gramm;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.LexerNoViableAltException;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

/**
 * A class that walks the parse tree of a Metamath file and produces effects at
 * specified nodes.
 */
public class MMParseTreeListener extends MMBaseListener {

    private ScopeStack ss;

    private long startTime;
    private static final int LABEL = 0;
    //public static final int KIND = 1; // one of "$f", "$e", "$a", or "$p"
    private static final int TYPE = 2; // e.g. "wff" or "|-"
    private static final int BODY = 3;
    private static final int PROOF = 5;

    /**
     * Sets the {@code ScopeStack} of the parse tree listener.
     *
     * @param scopestack the {@code ScopeStack} being set as the global scope
     *                   environment
     */
    void setScopeStack(ScopeStack scopestack) {
        this.ss = scopestack;
    }

    /**
     * A lexer that bails out at the first lexical error. Used in conjunction
     * with {@link MMBailErrorStrategy} to prevent recovery attempts from any
     * lexical or parsing errors. See Terence Parr's <emph>The Definitive
     * ANTLR 4 Reference</emph>, pp. 174-176, for details.
     */
    public static class MMBailLexer extends MMLexer {
        MMBailLexer(CharStream input) {
            super(input);
        }

        public void recover(LexerNoViableAltException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * On entering the {@code db} node, this method begins timekeeping and
     * pushes the toplevel scope onto the {@code ScopeStack}.
     *
     * @param ctx a {@code db} parse tree node
     */
    public void enterDb(MMParser.DbContext ctx) {
        System.out.format("reading source file %s ...%n", MMFile.dbFile.getName());
        startTime = System.nanoTime();
        ss.push(new Scope());
    }

    /**
     * On exiting the {@code db} node, which marks the completion of the tree
     * walk, this method prints out the program's exit message and time.
     *
     * @param ctx a {@code db} parse tree node
     */
    public void exitDb(MMParser.DbContext ctx) {
        long difference = System.nanoTime() - startTime;
        System.out.println(ss.endMessage());
        System.out.println("time: " + String.format("%.2f sec", (difference / 1E9)));
    }

    /**
     * On exiting an {@code includeStat} node, this method processes the
     * included file. After checking that the file conforms to the spec, a
     * specialized listener, {@link MMIncludeParseTreeListener}, is deployed to
     * walk the file's parse tree. To maintain a consistent database, the
     * original {@code ScopeStack} is passed to the listener.
     *
     * @param ctx an {@code includeStat} parse tree node
     */
    public void exitIncludeFile(MMParser.IncludeFileContext ctx) {
        String includePath = ctx.getChild(0).getText();
        try (InputStream is = new FileInputStream(includePath)) {
            File includeFile = (new File(includePath)).getCanonicalFile();
            if (includeFile.equals(MMFile.dbFile)) {
                System.out.format("warning: the original source file %s cannot be included%n",
                        MMFile.dbFile.getName());
                ss.incWarnings();
                return;
            }
            if (MMFile.containsInclude(includeFile)) {
                System.out.format("warning: %s has already been included -- ignoring "
                                  + "duplicate include%n", includeFile.getName());
                ss.incWarnings();
                return;
            }
            CharStream input = CharStreams.fromStream(is);
            MMBailLexer lexer = new MMBailLexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MMParser parser = new MMParser(tokens);
            parser.setErrorHandler(new BailErrorStrategy());
            // TokenStreamRewriter rewriter = new TokenStreamRewriter(tokens);
            MMIncludeParseTreeListener listener = new MMIncludeParseTreeListener();
            listener.setScopeStack(ss);
            //ParseTreeWalker walker = new ParseTreeWalker();
            // parser.setBuildParseTree(true); //is this needed?
            ParseTree tree = parser.db();

            MMFile.pushInclude(includeFile);
            MMFile.addInclude(includeFile);
            // Trees.inspect(tree, parser);
            // System.out.println(tree.toStringTree());
            //walker.walk(listener, tree);
            System.out.format("reading included file %s ...%n", includeFile.getName());
            ParseTreeWalker.DEFAULT.walk(listener, tree);

            MMFile.popInclude();
            // parser.addParseListener(listener);
            // parser.db();
        } catch (FileNotFoundException fnfe) {
            System.out.format("warning: included file %s could not be found%n", includePath);
            ss.incWarnings();
        } catch (IOException ioe) {
            System.out.format("warning: there was an i/o error when reading included file %s%n",
                    includePath);
            ss.incWarnings();
        }
    }

    /**
     * On entering a {@code scopeStat} node, this method pushes a new
     * scope onto the {@code ScopeStack}.
     *
     * @param ctx a {@code scopeStat} parse tree node
     */
    public void enterScopeStat(MMParser.ScopeStatContext ctx) {
        ss.push(new Scope());
    }

    /**
     * On exiting a {@code scopeStat} node, this method removes a scope from
     * the top of the {@code ScopeStack}.
     *
     * @param ctx a {@code scopeStat} parse tree node
     */
    public void exitScopeStat(MMParser.ScopeStatContext ctx) {
        ss.remove();
    }

    /**
     * On exiting a {@code constants} node (main child of a {@code constStat}
     * node), this method passes the constants as a string array to the
     * {@code ScopeStack} for further processing. Our grammar guarantees that
     * all constants are from the toplevel scope.
     *
     * @param ctx a {@code constants} parse tree node
     */
    public void exitConstants(MMParser.ConstantsContext ctx) {
        int count = ctx.getChildCount();
        String[] constants = new String[count];
        for (int i = 0; i < count; ++i) {
            String child = ctx.getChild(i).getText();
            constants[i] = child;
        }
        try {
            ss.addConstants(constants);
        } catch (MMException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * On exiting a {@code vars} node (main child of a {@code varStat} node),
     * this method passes the variables as a string array to the
     * {@code ScopeStack} for further processing.
     *
     * @param ctx a {@code vars} parse tree node
     */
    public void exitVars(MMParser.VarsContext ctx) {
        int count = ctx.getChildCount();
        String[] variables = new String[count];
        for (int i = 0; i < count; ++i) {
            String child = ctx.getChild(i).getText();
            variables[i] = child;
        }
        try {
            ss.addVars(variables);
        } catch (MMException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * On exiting a {@code disjointVars} node (main child of a
     * {@code disjointStat} node), this method passes the disjoint variables as
     * a string array to the {@code ScopeStack} for further processing.
     *
     * @param ctx a {@code disjointVars} parse tree node
     */
    public void exitDisjointVars(MMParser.DisjointVarsContext ctx) {
        int count = ctx.getChildCount();
        String[] dvars = new String[count];
        for (int i = 0; i < count; ++i) {
            String child = ctx.getChild(i).getText();
            dvars[i] = child;
        }
        try {
            ss.addDisjVars(dvars);
        } catch (MMException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * On exiting a {@code varTypeHyp} node, this method passes the node's
     * children (the label, type, and variable) as strings to the
     * {@code ScopeStack} for further processing.
     *
     * @param ctx a {@code varTypeHyp} parse tree node
     */
    public void exitVarTypeHyp(MMParser.VarTypeHypContext ctx) {
        String label = ctx.getChild(LABEL).getText();
        String type = ctx.getChild(TYPE).getText();
        String var = ctx.getChild(BODY).getText();
        try {
            ss.addVarHyp(label, type, var);
        } catch (MMException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * On exiting a {@code logicalHyp} node, this method passes the node's
     * children (the label and type as strings, the statement as a string
     * array) to the {@code ScopeStack} for further processing.
     *
     * @param ctx a {@code logicalHyp} parse tree node
     */
    public void exitLogicalHyp(MMParser.LogicalHypContext ctx) {
        String label = ctx.getChild(LABEL).getText();
        String type = ctx.getChild(TYPE).getText();
        ParseTree stat = ctx.getChild(BODY);
        int count = stat.getChildCount();
        String[] stmt = new String[count];
        for (int i = 0; i < count; ++i) {
            String child = stat.getChild(i).getText();
            stmt[i] = child;
        }
        try {
            ss.addLogHyp(label, type, stmt);
        } catch (MMException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * On exiting the {@code theorem} node, this method passes the theorem's
     * label and type (as strings) and its statement and proof (as string
     * arrays) to the {@code ScopeStack} for further processing.
     *
     * @param ctx a {@code theorem} parse tree node
     */
    public void exitTheorem(MMParser.TheoremContext ctx) {
        String label = ctx.getChild(LABEL).getText();
        String type = ctx.getChild(TYPE).getText();
        ParseTree stat = ctx.getChild(BODY);
        int statcount = stat.getChildCount();
        String[] stmt = new String[statcount];
        for (int i = 0; i < statcount; ++i) {
            String child = stat.getChild(i).getText();
            stmt[i] = child;
        }
        ParseTree proofstat = ctx.getChild(PROOF);
        int proofcount = proofstat.getChildCount();
        String[] proof = new String[proofcount];
        for (int i = 0; i < proofcount; ++i) {
            String child = proofstat.getChild(i).getText();
            proof[i] = child;
        }
        try {
            ss.addTheorem(label, type, stmt, proof);
        } catch (MMException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * On exiting an {@code axiom} node, this method passes the node's children
     * (the label and type as strings, the statement as a string array) to the
     * {@code ScopeStack} for further processing.
     *
     * @param ctx an {@code axiom} parse tree node
     */
    public void exitAxiom(MMParser.AxiomContext ctx) {
        String label = ctx.getChild(LABEL).getText();
        String type = ctx.getChild(TYPE).getText();
        ParseTree stat = ctx.getChild(BODY);
        int count = stat.getChildCount();
        String[] stmt = new String[count];
        for (int i = 0; i < count; ++i) {
            String sym = stat.getChild(i).getText();
            stmt[i] = sym;
        }
        try {
            ss.addAxiom(label, type, stmt);
        } catch (MMException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    // @Override public void visitErrorNode(ErrorNode node) {
    // Token sym = node.getSymbol();
    // int line = sym.getLine();
    // int pos = sym.getCharPositionInLine();
    // String tok = sym.getText();
    // throw new RuntimeException(String.format("token %s error at line %d col
    // %d", tok, line, pos));
    // }

}
