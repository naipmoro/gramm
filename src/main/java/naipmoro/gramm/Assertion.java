package naipmoro.gramm;

/**
 * A class to represent metamath assertions, either axioms or theorems.
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
     * @param label the name of the assertion
     * @param kind  the kind of assertion, either "$a" for axioms or "$p" for
     *              theorems
     * @param type  a string constant
     * @param stmt  a (possibly empty) string array containing the assertion's
     *              body
     * @param mand  a {@link Mandatory} object containing the assertion's
     *              mandatory hypotheses
     */
    public Assertion(String label, String kind, String type, String[] stmt, Mandatory mand) {
        this.label = label;
        this.kind = kind;
        this.type = type;
        this.body = stmt;
        this.mand = mand;
    }

    /**
     * {@inheritDoc}
     */
    public String getLabel() {
        return this.label;
    }

    /**
     * Returns the kind of assertion, either "$a" for axioms or "$p" for
     * theorems.
     *
     * @return either "$a" (for axiom) or "$p" (for theorem)
     */
    public String getKind() {
        return this.kind;
    }

    /**
     * {@inheritDoc}
     */
    public String getType() {
        return this.type;
    }

    /**
     * {@inheritDoc}
     */
    public String[] getBody() {
        return this.body;
    }

    /**
     * Returns the {@link Mandatory} object associated with the assertion.
     *
     * @return a {@link Mandatory} object
     */
    public Mandatory getMandatory() {
        return this.mand;
    }

    /**
     * {@inheritDoc}
     */
    public StatementCore getStmtCore() {
        return new StatementCore(this.type, this.body);
    }

    /**
     * {@inheritDoc}
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
