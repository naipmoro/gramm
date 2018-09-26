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

/**
 * A class to keep track of the Metamath source file and any subsequent
 * included files.
 */
class MMFile {

    /** The Metamath source file. */
    static File dbFile;

    /** The list of included files, including the source file. */
    private static List<File> includeFiles = new ArrayList<>();

    /** A stack to keep track of the current file. */
    private static Deque<File> includeStack = new ArrayDeque<>();

    static long startTime;

    /**
     * Sets the Metamath source file.
     *
     * @param file the Metamath source {@code File}
     */
    static void setDbFile(File file) {
        MMFile.dbFile = file;
    }

    /** Sets the source file's start time. */
    static void setStartTime(long st) {
        startTime = st;
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
     * Pushes a file to the stack of included files, making it the current
     * Metamath file.
     *
     * @param file a {@code File} pushed to the included file stack
     */
    static void pushInclude(File file) {
        includeStack.push(file);
    }

    /** Removes the current Metamath file from the top of the stack. */
    static void removeInclude() {
        includeStack.remove();
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
     * Given a parsing exception, an error message, and a scope stack, prints
     * the message and exits the application.
     *
     * @param re  an Antlr parsing {@code RecognitionException}
     * @param msg an error message
     * @param ss  the current {@code ScopeStack}
     */
    static void parseExceptionMessage(RecognitionException re, String msg, ScopeStack ss) {
        long difference = System.nanoTime() - MMFile.startTime;
        ss.incErrors();
        Token tok = re.getOffendingToken();
        int col = tok.getCharPositionInLine();
        int line = tok.getLine();
        System.out.println(msg);
        System.out.format("line: %d, col: %d, token: %s%n", line, col, tok.getText());
        System.out.println(ss.endMessage());
        System.out.println("time: " + String.format("%.2f sec", (difference / 1E9)));
        System.exit(1);
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
            RecognitionException e = (RecognitionException)pce.getCause();
            String msg = String.format("syntax error in file %s",
                    MMFile.getCurrentFile().getName());
            parseExceptionMessage(e, msg, ss);
        } catch (RecognitionException re) {
            String msg = String.format("syntax error in file %s",
                    MMFile.getCurrentFile().getName());
            parseExceptionMessage(re, msg, ss);
        }
    }
}
