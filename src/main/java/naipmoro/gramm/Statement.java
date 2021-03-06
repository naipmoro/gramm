package naipmoro.gramm;

/**
 * An interface to cover all Metamath statements: assertions (axioms and
 * theorems) and hypotheses (variable-type and logical).
 */
public interface Statement {

    /**
     * Returns the identifying label of the statement.
     *
     * @return the label of the statement
     */
    String getLabel();

    /**
     * Returns the kind of statement: "$a" for axioms, "$p" for theorems, "$f"
     * for variable-type hypotheses, or "$e" for logical hypotheses.
     *
     * @return the kind of statement
     */
    String getKind();

    /**
     * Returns the type of statement. This could be any Metamath constant
     * string, but in practice it is usually either "wff" to represent
     * syntactic statements or "|-" to represent assertions.
     *
     * @return a Metamath constant representing the type of statement
     */
    String getType();

    /**
     * Returns the body of the statement as a (possibly empty) string array of
     * Metamath constants and variables. If the statement is a variable-type
     * hypothesis, an array of exactly one variable is returned.
     *
     * @return the body of the statement
     */
    String[] getBody();

    /**
     * Returns the {@code Mandatory} object associated with the statement. Only
     * assertions (axioms and theorems) carry a mandatory object.
     *
     * @return a {@code Mandatory} object
     */
    Mandatory getMandatory();

    /**
     * Returns the core elements of the statement, namely its type and its
     * body.
     *
     * @return the core elements of a statement: its type and its body
     */
    StatementCore getStmtCore();

}
