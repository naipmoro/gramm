package naipmoro.gramm;

import java.io.File;

/**
 * A listener that walks the parse trees of included files. Extends
 * {@code MMParseTreeListener}.
 */
public class MMIncludeParseTreeListener extends MMParseTreeListener {

    /**
     * Prints a message on entering the included file. Notably, it does not
     * initialize a new {@code ScopeStack}.
     *
     * @param ctx a {@code db} parse tree node
     */
    @Override
    public void enterDb(MMParser.DbContext ctx) {
        System.out.format("reading included file %s ...%n", MMFile.getCurrentFileName());
    }

    /**
     * Pops the current file from the stack when exiting it.
     *
     * @param ctx a {@code db} parse tree node
     */
    @Override
    public void exitDb(MMParser.DbContext ctx) {
        MMFile.popInclude();
    }

}
