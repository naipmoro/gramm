package naipmoro.gramm;

import java.io.FileNotFoundException;
import java.io.IOException;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.LexerNoViableAltException;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.SyntaxTree;


/**
 * A listener that walks the parse tree of a Metamath file and produces effects
 * at specified nodes. Extends the Antlr-provided empty base listener.
 */
public class MMParseTreeListener extends MMBaseListener {

    private ScopeStack ss;
    private CommonTokenStream tokens;

    private long startTime;
    private static final int LABEL = 0;
    private static final int KIND = 1; // one of "$f", "$e", "$a", or "$p"
    private static final int TYPE = 2; // e.g. "wff" or "|-"
    private static final int BODY = 3;
    private static final int PROOF = 5;

    /**
     * Sets the global {@code ScopeStack} of the parse tree listener.
     *
     * @param scopestack the {@code ScopeStack} being set as the global scope
     *                   environment
     */
    void setScopeStack(ScopeStack scopestack) {
        this.ss = scopestack;
    }

    /**
     * Sets the listener's token stream.
     *
     * @param tokens an Antlr token stream
     */
    void setTokenStream(CommonTokenStream tokens) {
        this.tokens = tokens;
    }

    /**
     * Given an exception and a syntax node, prints a fatal error message and
     * exits the application. The {@code MMException} provides the message,
     * while the {@code SyntaxTree} provides the error location.
     *
     * @param e   a {@code MMException}
     * @param ctx the syntax node in which the exception was caught
     */
    void exceptionMessage(MMException e, SyntaxTree ctx) {
        long difference = System.nanoTime() - startTime;
        Token tok = tokens.get(ctx.getSourceInterval().a);
        System.out.format("error: %s%n", e.getMessage());
        System.out.format("line: %d, col: %d, token: %s%n",
                tok.getLine(), tok.getCharPositionInLine(), tok.getText());
        System.out.println("time: " + String.format("%.2f sec", (difference / 1E9)));
        System.out.println("exiting...");
        System.exit(1);
    }

    /**
     * A lexer that bails out at the first lexical error. Used in conjunction
     * with {@code BailErrorStrategy} to prevent recovery attempts from any
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
     * On exiting an {@code includeStat} node, this method passes the path of
     * the included file to {@link MMFile#walkInclude} for parsing and tree
     * walking.
     *
     * @param ctx an {@code includeStat} parse tree node
     */
    public void exitIncludeFile(MMParser.IncludeFileContext ctx) {
        //System.out.println(ctx.getParent().getStop().getLine()); //TESTING
        String includePath = ctx.getChild(0).getText();
        try {
            MMFile.walkInclude(includePath, ss);
        } catch (FileNotFoundException fnfe) {
            System.out.format("error: included file %s could not be found%n", includePath);
            System.exit(1);
        } catch (IOException ioe) {
            System.out.format("error: there was an i/o error when reading included file %s%n",
                    includePath);
            System.exit(1);
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
            exceptionMessage(e, ctx);
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
            exceptionMessage(e, ctx);
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
            exceptionMessage(e, ctx);
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
            exceptionMessage(e, ctx);
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
            exceptionMessage(e, ctx);
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
            exceptionMessage(e, ctx);
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
            exceptionMessage(e, ctx);
        }
    }

}
