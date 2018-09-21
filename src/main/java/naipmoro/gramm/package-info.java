/**
 * <p>
 * Gramm is an Antlr-based Metamath proof verifier. From a BNF-like grammar of
 * the Metamath language, Antlr4 creates a parser which, when fed a source
 * file, generates a parse tree.
 * </p>
 *
 * <table class="image">
 * <caption align="bottom">A small branch of set.mm</caption>
 * <tr><td><img src="doc-files/mmexample.png"></td></tr>
 * </table>
 *
 * <p>
 * We walk the tree by extending an Antlr4-provided empty base listener. At
 * significant terminal nodes of the tree, tokens are gathered and sent to the
 * global {@link naipmoro.gramm.ScopeStack} for processing. The most important
 * processing occurs in response to the {@code proof} nodes and involves calls
 * to {@link naipmoro.gramm.Proof#verify()}.
 * </p>
 */

package naipmoro.gramm;
