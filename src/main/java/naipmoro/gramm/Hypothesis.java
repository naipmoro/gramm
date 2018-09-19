package naipmoro.gramm;

import java.util.Arrays;

/**
 * A Metamath hypothesis, either variable-type or logical.
 */
public class Hypothesis implements Statement, Comparable<Hypothesis> {
    private final String label;
    private final String kind;
    private final String type;
    private final String[] body;
    private final int order;

    /**
     * Hypothesis constructor.
     *
     * @param label the identifying label of the hypothesis
     * @param kind  the kind of hypothesis, either "$f" for a variable-type
     *              hypothesis or "$e" for a logical hypothesis
     * @param type  a Metamath constant representing the type of hypothesis
     * @param body  a string array containing the body of the hypothesis
     * @param order an integer N specifying that the hypothesis was the Nth
     *              hypothesis in the Metamath database, using 1-indexing.
     *              Typically this parameter is calculated by a method.
     */
    public Hypothesis(String label, String kind, String type, String[] body, int order) {
        this.label = label;
        this.kind = kind;
        this.type = type;
        this.body = body;
        this.order = order;
    }

    /**
     * Returns the identifying label of the hypothesis.
     *
     * @return the identifying label of the hypothesis
     */
    public String getLabel() {
        return this.label;
    }

    /**
     * Returns the kind of hypothesis, either "$f" for a variable-type
     * hypothesis or "$e" for a logical hypothesis.
     *
     * @return the kind of hypothesis, either "$f" for a variable-type
     * hypothesis or "$e" for a logical hypothesis
     */
    public String getKind() {
        return this.kind;
    }

    /**
     * Returns the Metamath constant representing the type of hypothesis.
     *
     * @return the Metamath constant representing the type of hypothesis
     */
    public String getType() {
        return this.type;
    }

    /**
     * Returns the body of the hypothesis as a string array. In the case of a
     * logical hypothesis, a (possibly empty) string array of Metamath
     * constants and variables is returned. In the case of a variable-type
     * hypothesis, a string array with exactly one variable is returned.
     *
     * @return the body of the hypothesis as a string array
     */
    public String[] getBody() {
        return this.body;
    }


    /**
     * Unimplemented method. Hypotheses lack a {@code Mandatory} field.
     *
     * @throws UnsupportedOperationException if method is used
     */
    public Mandatory getMandatory() {
        throw new UnsupportedOperationException();
    }

    /**
     * Returns the core elements of the hypothesis, namely its type and its
     * body.
     *
     * @return the core elements of a hypothesis: its type and its body
     */
    public StatementCore getStmtCore() {
        return new StatementCore(this.type, this.body);
    }

    //    @Override
    //    public int compareTo(Hypothesis o) {
    //        return Integer.valueOf(this.order).compareTo(Integer.valueOf(o.order));
    //    }

    /**
     * {@inheritDoc}
     */
    public int compareTo(Hypothesis o) {
        if (this.order < o.order) {
            return -1;
        }
        if (this.order > o.order) {
            return 1;
        } else {
            return 0;
        }
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((body == null) ? 0 : Arrays.hashCode(body));
        result = prime * result + ((kind == null) ? 0 : kind.hashCode());
        result = prime * result + ((label == null) ? 0 : label.hashCode());
        result = prime * result + ((type == null) ? 0 : type.hashCode());
        return result;
    }

    /**
     * Determines if an object is equal to the hypothesis. Note that the
     * {@code order} field is irrelevant: two otherwise identical hypotheses
     * that differ only in their order of appearance in a database are
     * considered equal.
     *
     * @param obj the object being compared to the hypothesis
     * @return true if the object is equal to the hypothesis, false otherwise
     */
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Hypothesis)) {
            return false;
        }
        Hypothesis other = (Hypothesis) obj;
        if (body == null) {
            if (other.body != null) {
                return false;
            }
        } else if (!Arrays.equals(this.body, other.body)) {
            return false;
        }
        if (kind == null) {
            if (other.kind != null) {
                return false;
            }
        } else if (!kind.equals(other.kind)) {
            return false;
        }
        if (label == null) {
            if (other.label != null) {
                return false;
            }
        } else if (!label.equals(other.label)) {
            return false;
        }
        if (type == null) {
            if (other.type != null) {
                return false;
            }
        } else if (!type.equals(other.type)) {
            return false;
        }
        return true;
    }

    /**
     * Returns the string representation of the hypothesis.
     *
     * @return the string representation of the hypothesis
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String s : this.body) {
            sb.append(" " + s);
        }
        return "<" + label + " " + kind + " " + type
               + sb.toString() + " " + order + ">";
    }

}
