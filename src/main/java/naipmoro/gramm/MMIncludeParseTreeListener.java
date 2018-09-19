package naipmoro.gramm;

/**
 * This class extends {@link MMParseTreeListener} to walk the parse trees of
 * included files.
 */
public class MMIncludeParseTreeListener extends MMParseTreeListener {

    /**
     * Prints a message on reading the included file. Notably, it does not
     * initialize a new {@code ScopeStack}.
     *
     * @param ctx a {@code db} parse tree node
     */
    @Override
    public void enterDb(MMParser.DbContext ctx) {
        System.out.format("reading included file %s ...%n", MMFile.getCurrentFile().getName());
    }

    /**
     * Removes the current file from the stack when exiting it.
     *
     * @param ctx a {@code db} parse tree node
     */
    @Override
    public void exitDb(MMParser.DbContext ctx) {
        MMFile.removeInclude();
    }

}
