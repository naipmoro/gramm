package naipmoro.gramm;

import java.util.List;

/**
 * The essential elements of a statement (its type and its body) used by the
 * proof verifer.
 */
public class StatementCore {
    private final String type;
    private final String body[];

    /**
     * A StatementCore constructor.
     *
     * @param type a Metamath constant representing the type of statement
     * @param body a string array containing the body of the statement
     */
    StatementCore(String type, String[] body) {
        this.type = type;
        this.body = body;
    }

    /**
     * A StatementCore constructor.
     *
     * @param type a Metamath constant representing the type of statement
     * @param body a {@code List} containing the body of a statement
     */
    StatementCore(String type, List<String> body) {
        this.type = type;
        String[] arr = new String[body.size()];
        arr = body.toArray(arr);
        this.body = arr;
    }

    /**
     * Returns the Metamath constant representing the type of statement.
     *
     * @return the Metamath constant representing the type of statement
     */
    public String getType() {
        return this.type;
    }

    /**
     * Returns the body of the statement as a (possibly empty) string array of
     * Metamath constants and variables. If the statement is a variable-type
     * hypothesis, an array of exactly one variable is returned.
     *
     * @return the body of the statement as a string array
     */
    String[] getBody() {
        return this.body;
    }

    /**
     * Returns the string representation of the {@code StatementCore}.
     *
     * @return the string representation of the {@code StatementCore}
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
