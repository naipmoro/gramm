/**
 * Gramm is an Antlr-based Metamath proof verifier. From a BNF-like grammar of
 * the Metamath language, Antlr4 creates a parser which, when fed a source
 * file, generates a parse tree.
 *
 * <table class="image">
 * <caption align="bottom">a small branch of set.mm</caption>
 * <tr><td><img src="doc-files/mmexample.png"></td></tr>
 * </table>
 *
 * We walk the tree by extending an empty Antlr4-provided listener. At each
 * significant node of the tree, tokens are gathered and sent to the global
 * {@link naipmoro.gramm.ScopeStack} for processing. The most important
 * processing occurs at the proof nodes and involves calls to
 * {@link naipmoro.gramm.Proof#verify()}.
 */

package naipmoro.gramm;
