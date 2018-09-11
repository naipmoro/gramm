package naipmoro.gramm;

/**
 * This class extends {@link MMParseTreeListener} to walk the parse trees of
 * included files. It is identical to {@link MMParseTreeListener} except for not
 * initializing a new {@code ScopeStack} on entering the file or printing an
 * exit message on exiting the file.
 */
public class MMIncludeParseTreeListener extends MMParseTreeListener {


    @Override
    public void enterDb(MMParser.DbContext ctx) {
    }


    @Override
    public void exitDb(MMParser.DbContext ctx) {
    }

}
