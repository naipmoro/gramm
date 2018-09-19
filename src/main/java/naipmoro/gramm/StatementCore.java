package naipmoro.gramm;

import java.util.List;

/**
 * The essential elements of a statement, its type and its body, used by the
 * proof verifer.
 */
public class StatementCore {
    private final String type;
    private final String body[];

    /**
     * A StatementCore constructor.
     * @param type a metamath constant
     * @param body a string array containing the body of the statement
     */
    StatementCore(String type, String[] body) {
        this.type = type;
        this.body = body;
    }

    /**
     * A StatementCore constructor.
     * @param type a metamath constant
     * @param body a list containing the body of a statement
     */
    StatementCore(String type, List<String> body) {
        this.type = type;
        String[] arr = new String[body.size()];
        arr = body.toArray(arr);
        this.body = arr;
    }

    /**
     * Returns the metamath constant representing the type of statement.
     * @return a metamath constant
     */
    public String getType() {
        return this.type;
    }

    /**
     * Returns the body of the statement as a (possibly empty) string array of
     * metamath constants and variables. If the statement is a variable-type
     * hypothesis, an array of exactly one variable is returned.
     *
     * @return the body of the statement
     */
    String[] getBody() {
        return this.body;
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
        return "<" + this.type + "," + sb.toString() + ">";
    }

}
