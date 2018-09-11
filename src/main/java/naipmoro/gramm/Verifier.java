package naipmoro.gramm;

import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
//import org.antlr.v4.runtime.tree.ParseTree;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class Verifier {

    static void mmVerify(File dbFile) throws IOException {
            dbFile = dbFile.getCanonicalFile();
            InputStream is = new FileInputStream(dbFile);
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
            parser.setErrorHandler(new BailErrorStrategy());
            //parser.addParseListener(listener);
            ParseTree tree = parser.db();
            ParseTreeWalker.DEFAULT.walk(listener, tree);
    }

    /**
     * The entry point for the application. Given the file name of a metamath
     * database, the file is passed for parsing and verifying. Exits in case of
     * a file error.
     *
     * @param args a file name
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
