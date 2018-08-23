package naipmoro.gramm;

/**
 * A class to represent axioms and theorems.
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
     * @param kind the kind of assertion; in this case either "$a" (axiom) or
     *             "$p" (theorem)
     * @param type a string constant
     * @param stmt a string array containing the assertion
     * @param mand a {@link Mandatory} object, containing the assertion's
     *             mandatory hypotheses
     */
    public Assertion(String label, String kind, String type, String[] stmt, Mandatory mand) {
        this.label = label;
        this.kind = kind;
        this.type = type;
        this.body = stmt;
        this.mand = mand;
    }

    /**
     * Returns the name of the assertion.
     *
     * @return name as a string
     */
    public String getLabel() {
        return this.label;
    }

    /**
     * Returns the kind of assertion.
     *
     * @return either "$a" (for axiom) or "$p" (for theorem)
     */
    public String getKind() {
        return this.kind;
    }

    /**
     * Returns the type of assertion. This could be any metamath constant
     * string, but in practice it is usually either "wff" to represent
     * syntactic assertions or "|-" to represent assertions.
     *
     * @return the type of assertion as a string
     */
    public String getType() {
        return this.type;
    }

    /**
     * Returns the body of the assertion as a string array.
     *
     * @return the body of the assertion as a string array
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
     * Returns the assertion's statement core, namely its type and its body.
     *
     * @return the assertion's {@link StatementCore}
     */
    public StatementCore getStmtCore() {
        return new StatementCore(this.type, this.body);
    }

    /**
     * Returns a string representation of the assertion.
     *
     * @return the assertion as a string
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
