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
 * The main class that iniiates the verification of a Metamath source file.
 */
public class Verifier {

    /**
     * Parses and walks the parse tree of a Metamath source file.
     *
     * @param dbFile the Metamath source file
     * @throws IOException if the file doesn't exist or can't be processed
     */
    public static void mmVerify(File dbFile) throws IOException {
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
            ParseTree tree = parser.db();
            ParseTreeWalker.DEFAULT.walk(listener, tree);
        } catch (ParseCancellationException pce) {
            System.out.format("syntax error in file %s%n",
                    MMFile.getCurrentFile().getName());
            RecognitionException e = (RecognitionException)pce.getCause();
            int col = e.getOffendingToken().getCharPositionInLine();
            int line = e.getOffendingToken().getLine();
            String token = e.getOffendingToken().getText();
            System.out.format("line: %d, col: %d, token: %s%n", line, col, token);
            System.exit(1);
        } catch (RecognitionException re) {
            int col = re.getOffendingToken().getCharPositionInLine();
            int line = re.getOffendingToken().getLine();
            String token = re.getOffendingToken().getText();
            System.out.format("line: %d, col: %d, token: %s%n", line, col, token);
            System.exit(1);
        }


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
            mmVerify(dbFile);
        } catch (FileNotFoundException fnfe) {
            System.out.println("file not found error: " + filename);
            System.exit(1);
        } catch (IOException ioe) {
            System.out.println("file i/o error: " + filename);
            System.exit(1);
        }
    }
}
