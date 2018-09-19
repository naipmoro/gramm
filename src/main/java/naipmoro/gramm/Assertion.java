package naipmoro.gramm;

/**
 * A Metamath assertion, either an axiom or a theorem.
 */
public class Assertion implements Statement {
    private final String label;
    private final String kind;
    private final String type;
    private final String[] body;
    private final Mandatory mand;

    /**
     * Assertion constructor.
     *
     * @param label the identifying label of the assertion
     * @param kind  the kind of assertion, either "$a" for an axiom or "$p" for
     *              a theorem
     * @param type  a metamath constant representing the type of assertion
     * @param stmt  a (possibly empty) string array containing the body of the
     *              assertion
     * @param mand  a {@code Mandatory} object containing the assertion's
     *              mandatory hypotheses and disjoint variable pairs
     */
    public Assertion(String label, String kind, String type, String[] stmt, Mandatory mand) {
        this.label = label;
        this.kind = kind;
        this.type = type;
        this.body = stmt;
        this.mand = mand;
    }

    /**
     * Returns the identifying label of the assertion.
     *
     * @return the identifying label of the assertion
     */
    public String getLabel() {
        return this.label;
    }

    /**
     * Returns the kind of assertion, either "$a" for axioms or "$p" for
     * theorems.
     *
     * @return the kind of assertion, either "$a" for axioms or "$p" for
     * theorems
     */
    public String getKind() {
        return this.kind;
    }

    /**
     * Returns the Metamath constant representing the type of assertion.
     *
     * @return the Metamath constant representing the type of assertion
     */
    public String getType() {
        return this.type;
    }

    /**
     * Returns a (possibly empty) string array containing the body of the
     * assertion
     *
     * @return the body of the assertion as a string array
     */
    public String[] getBody() {
        return this.body;
    }

    /**
     * Returns the {@code Mandatory} object associated with the assertion.
     *
     * @return the {@code Mandatory} object associated with the assertion
     */
    public Mandatory getMandatory() {
        return this.mand;
    }

    /**
     * Returns the core elements of the assertion, namely its type and its
     * body.
     *
     * @return the core elements of the assertion: its type and its body
     */
    public StatementCore getStmtCore() {
        return new StatementCore(this.type, this.body);
    }

    /**
     * Returns the string representation of the assertion.
     *
     * @return the string representation of the assertion
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String s : this.body) {
            sb.append(" " + s);
        }
        return "<" + label + "," + kind + "," + type
               + sb.toString() + ">";
    }

}
