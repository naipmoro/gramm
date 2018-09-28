package naipmoro.gramm;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.ParseCancellationException;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/**
 * The main class that initiates the verification of a Metamath source file.
 */
public class Verifier {

    /**
     * Parses and walks the parse tree of a Metamath source file.
     *
     * @param dbFile the Metamath source file
     * @throws IOException if the file doesn't exist or can't be processed
     */
    static void verifyMM(File dbFile) throws IOException {
        dbFile = dbFile.getCanonicalFile();
        try (InputStream is = new FileInputStream(dbFile)) {
            CharStream input = CharStreams.fromStream(is);
            MMFile.setDbFile(dbFile);
            MMFile.pushInclude(dbFile);
            MMFile.addInclude(dbFile);
            MMParseTreeListener.MMBailLexer lexer = new MMParseTreeListener.MMBailLexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MMParser parser = new MMParser(tokens);
            MMParseTreeListener listener = new MMParseTreeListener();
            ScopeStack ss = new ScopeStack();
            listener.setScopeStack(ss);
            listener.setTokenStream(tokens);
            parser.setErrorHandler(new BailErrorStrategy());
            //parser.addParseListener(listener);
            System.out.format("reading source file %s ...%n", MMFile.dbFile.getName());
            MMFile.setStartTime(System.nanoTime());
            ParseTree tree = parser.db();
            ParseTreeWalker.DEFAULT.walk(listener, tree);
        } catch (ParseCancellationException pce) {
            RecognitionException e = (RecognitionException)pce.getCause();
            parserExceptionMessage(e);
        } catch (RecognitionException re) {
            parserExceptionMessage(re);
        }

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
    static void verifyInclude(String includePath, ScopeStack ss) throws IOException {
        try(InputStream is = new FileInputStream(includePath)) {
            File includeFile = (new File(includePath)).getCanonicalFile();
            if (includeFile.equals(MMFile.dbFile)) {
                System.out.format("warning: the original source file %s cannot be included%n",
                        MMFile.dbFile.getName());
                ss.incWarnings();
                return;
            }
            if (MMFile.containsInclude(includeFile)) {
                System.out.format("info: ignoring duplicate include of %s%n",
                        includeFile.getName());
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
            parserExceptionMessage(e, ss);
        } catch (RecognitionException re) {
            parserExceptionMessage(re, ss);
        }
    }

    /**
     * Given a parsing exception, an error message, and a scope stack, prints
     * the message and exits the application.
     *
     * @param re  an Antlr parsing {@code RecognitionException}
     * @param ss  the current {@code ScopeStack}
     */
    static void parserExceptionMessage(RecognitionException re, ScopeStack ss) {
        long difference = System.nanoTime() - MMFile.startTime;
        ss.incErrors();
        Token tok = re.getOffendingToken();
        int col = tok.getCharPositionInLine();
        int line = tok.getLine();
        System.out.format("syntax error in file %s%n", MMFile.getCurrentFileName());
        System.out.format("line: %d, col: %d, symbol: %s%n", line, col, tok.getText());
        System.out.println(ss.endMessage());
        System.out.println("time: " + String.format("%.2f sec", (difference / 1E9)));
        System.exit(1);
    }

    /**
     * Given a parsing exception, prints an error message and exits the
     * application.
     *
     * @param re an Antlr parsing {@code RecognitionException}
     */
    static void parserExceptionMessage(RecognitionException re) {
        Token tok = re.getOffendingToken();
        int col = tok.getCharPositionInLine();
        int line = tok.getLine();
        System.out.format("syntax error in file %s%n", MMFile.getCurrentFileName());
        System.out.format("line: %d, col: %d, symbol: %s%n", line, col, tok.getText());
        System.out.println("1 error");
        System.exit(1);
    }

    /**
     * The entry point for the application. Given the name of a metamath source
     * file, the file is passed on for parsing and verifying. Exits in case of
     * a file error.
     *
     * @param args the name of a Metamath source file
     */
    public static void main(String[] args) {
        String filename = args[0];
        File dbFile = new File(filename);
        try {
            verifyMM(dbFile);
        } catch (FileNotFoundException fnfe) {
            System.out.println("1 error: file " + filename + " was not found");
            System.exit(1);
        } catch (IOException ioe) {
            System.out.println("1 error: file " + filename + " could not be processed");
            System.exit(1);
        }
    }
}
