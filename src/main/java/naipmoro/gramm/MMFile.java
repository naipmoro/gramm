package naipmoro.gramm;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.ParseCancellationException;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;

/** A class to keep track of the Metamath source file and subsequent included
 * files.
 */
class MMFile {

    /**
     * The Metamath source file.
     */
    static File dbFile;

    /**
     * The list of included files, including the source file.
     */
    private static List<File> includeFiles = new ArrayList<>();

    /**
     * A stack to keep track of the current file.
     */
    private static Deque<File> includeStack = new ArrayDeque<>();


    /**
     * Sets the Metamath source file.
     *
     * @param file the Metamath source {@code File}
     */
    static void setDbFile(File file) {
        MMFile.dbFile = file;
    }

    /**
     * Adds a file to the list of included files.
     *
     * @param file the {@code File} added to the list of included files
     */
    static void addInclude(File file) {
        includeFiles.add(file);
    }

    /**
     * Pushes a file onto the stack of included files, making it the current
     * Metamath file.
     *
     * @param file a {@code File} pushed onto the included file stack
     */
    static void pushInclude(File file) {
        includeStack.push(file);
    }

    /**
     * Returns the current Metamath file and removes it from the stack.
     *
     * @return the current Metamath {@code File}
     */
    static File popInclude() {
        return includeStack.pop();
    }

    /**
     * Returns the current Metamath file.
     *
     * @return the current Metamath {@code File}
     */
    static File getCurrentFile() {
        return includeStack.peek();
    }

    /**
     * Determines whether a file is in the list of included files.
     *
     * @param file the {@code File} whose membership is being tested
     * @return true if the file is in the list of included files, false
     * otherwise
     */
    static boolean containsInclude(File file) {
        return includeFiles.contains(file);
    }

    /**
     * Parses and walks the parse tree of an included file in the context of a
     * global {@code ScopeStack}. Note that a special extended listener,
     * {@link MMIncludeParseTreeListener}, is deployed to walk the parse tree.
     *
     * @param includePath the {@code String} path of the included file
     * @param ss          the global {@code ScopeStack}
     * @throws IOException if the file doesn't exist or can't be properly
     *                     processed
     */
    static void walkInclude(String includePath, ScopeStack ss) throws IOException {
        try(InputStream is = new FileInputStream(includePath)) {
            File includeFile = (new File(includePath)).getCanonicalFile();
            if (includeFile.equals(MMFile.dbFile)) {
                System.out.format("warning: the original source file %s cannot be included%n",
                        MMFile.dbFile.getName());
                ss.incWarnings();
                return;
            }
            if (MMFile.containsInclude(includeFile)) {
                System.out.format("info: ignoring duplicate include of %s%n", includeFile.getName());
                return;
            }
            CharStream input = CharStreams.fromStream(is);
            MMParseTreeListener.MMBailLexer lexer = new MMParseTreeListener.MMBailLexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MMParser parser = new MMParser(tokens);
            parser.setErrorHandler(new BailErrorStrategy());
            MMIncludeParseTreeListener listener = new MMIncludeParseTreeListener();
            listener.setScopeStack(ss);
            listener.setTokenStream(tokens);
            ParseTree tree = parser.db();
            MMFile.pushInclude(includeFile);
            MMFile.addInclude(includeFile);
            //System.out.format("reading included file %s ...%n", includeFile.getName());
            ParseTreeWalker.DEFAULT.walk(listener, tree);
        } catch (ParseCancellationException pce) {
            System.out.format("syntax error in file %s%n", MMFile.getCurrentFile().getName());
            RecognitionException e = (RecognitionException)pce.getCause();
            int col = e.getOffendingToken().getCharPositionInLine();
            int line = e.getOffendingToken().getLine();
            String token = e.getOffendingToken().getText();
            System.out.format("line: %d, col: %d, token: %s%n", line, col, token);
            System.exit(1);
        } catch (RecognitionException re) {
            System.out.format("syntax error in file %s%n", MMFile.getCurrentFile().getName());
            int col = re.getOffendingToken().getCharPositionInLine();
            int line = re.getOffendingToken().getLine();
            String token = re.getOffendingToken().getText();
            System.out.format("line: %d, col: %d, token: %s%n", line, col, token);
            System.exit(1);
        }
    }
}
