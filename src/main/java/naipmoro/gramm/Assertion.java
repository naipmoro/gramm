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
     * @param label the name of the statement
     * @param kind
     * @param type
     * @param stmt
     * @param mand
     */
    public Assertion(String label, String kind, String type, String[] stmt, Mandatory mand) {
        this.label = label;
        this.kind = kind;
        this.type = type;
        this.body = stmt;
        this.mand = mand;
    }

    public String getLabel() {
        return this.label;
    }

    public String getKind() {
        return this.kind;
    }

    public String getType() {
        return this.type;
    }

    public String[] getBody() {
        return this.body;
    }

    public Mandatory getMandatory() {
        return this.mand;
    }

    public StatementCore getStmtCore() {
        return new StatementCore(this.type, this.body);
    }

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
