package naipmoro.gramm;

import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class Verifier {

    public static void mmVerify(InputStream is) {
        try {
            CharStream input = CharStreams.fromStream(is);
            MMParseTreeListener.MMBailLexer lexer = new MMParseTreeListener.MMBailLexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MMParser parser = new MMParser(tokens);
            MMParseTreeListener listener = new MMParseTreeListener();
            ScopeStack ss = new ScopeStack();
            listener.setScopeStack(ss);
            parser.setErrorHandler(new BailErrorStrategy());
            parser.addParseListener(listener);
            //ParseTree tree =
            parser.db();
            //ParseTreeWalker walker = new ParseTreeWalker();
            //walker.walk(listener, tree);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        String filename = args[0];
        try (InputStream is = new FileInputStream(filename)) {
            mmVerify(is);
        } catch (FileNotFoundException e) {
            System.out.println("file not found error: " + filename);
        } catch (IOException ioe) {
            System.out.println("file input error: " + filename);
        }
    }
}
