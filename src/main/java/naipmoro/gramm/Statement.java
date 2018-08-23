package naipmoro.gramm;

/**
 * An interface to cover all metamath statements: assertions (axioms and
 * theorems) and hypotheses (variable-type and logical).
 */
public interface Statement {

    /**
     * Returns the name of the statement.
     *
     * @return the name of the statement as a string
     */
    String getLabel();

    /**
     * Returns the kind of statement: "$a" for axioms, "$p" for theorems, "$f"
     * for variable-type hypotheses, or "$e" for logical hypotheses.
     *
     * @return the kind of statement as a string
     */
    String getKind();

    /**
     * Returns the type of statement. This could be any metamath constant
     * string, but in practice it is usually either "wff" to represent
     * syntactic statements or "|-" to represent assertions.
     *
     * @return the type of statement as a string
     */
    String getType();

    /**
     * Returns the body of the statement as a (possibly empty) string array of
     * metamath constants and variables.
     *
     * @return the body of the statement as a string array
     */
    String[] getBody();

    /**
     * Returns the {@link Mandatory} object associated with the statement. Only
     * assertions (axioms and theorems) carry a mandatory object.
     *
     * @return a {@link Mandatory} object
     */
    Mandatory getMandatory();

    /**
     * Returns the core elements of a statement, namely its type and its body.
     *
     * @return the statement's {@link StatementCore}
     */
    StatementCore getStmtCore();

}
