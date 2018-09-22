/**
 * <p>
 * Gramm is an Antlr-based Metamath proof verifier. From a
 * <a href="doc-files/MM.g4">BNF-like grammar</a> of
 * the Metamath language, Antlr4 creates a parser which, when fed a source
 * file, generates a parse tree. Here's a small branch of set.mm's tree:
 * </p>
 *
 * <img src="doc-files/setbranch.png">
 *
 * <p>
 * We walk the tree by
 * {@linkplain naipmoro.gramm.MMParseTreeListener extending} an Antlr4-provided
 * empty base listener. At particular terminal nodes of the tree, tokens are
 * gathered and sent to the global {@link naipmoro.gramm.ScopeStack} for
 * processing. The most important processing occurs via the {@code proof} nodes
 * and involves calls to {@link naipmoro.gramm.Proof#verify()}.
 * </p>
 */

package naipmoro.gramm;
