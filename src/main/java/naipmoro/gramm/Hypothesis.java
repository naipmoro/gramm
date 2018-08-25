package naipmoro.gramm;

import java.util.Arrays;

/**
 * A class to represent metamath hypotheses, either variable-type or logical.
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
     * @param type  a metamath constant
     * @param body  a string array containing the body of the hypothesis
     * @param order an integer N specifying that the hypothesis was the Nth
     *              hypothesis in the metamath database, using 1-indexing.
     *              Typically this is calculated by a method.
     */
    public Hypothesis(String label, String kind, String type, String[] body, int order) {
        this.label = label;
        this.kind = kind;
        this.type = type;
        this.body = body;
        this.order = order;
    }

    /**
     * {@inheritDoc}
     */
    public String getLabel() {
        return this.label;
    }

    /**
     * Returns the kind of hypothesis, either "$f" for a variable-type
     * hypothesis or "$e" for a logical hypothesis.
     *
     * @return the kind of hypothesis, either "$f" (variable-type hypothsis) or
     * "$e" (logical hypothesis)
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
     * Returns the body of the hypothesis as a string array. In the case of a
     * logical hypothesis, a (possibly empty) string array of metamath
     * constants and variables is returned. In the case of a variable-type
     * hypothesis, a string array with exactly one variable is returned.
     *
     * @return the body of the hypothesis as a string array
     */
    public String[] getBody() {
        return this.body;
    }

    /**
     * An empty implementation of this method. Hypotheses lack a
     * {@link Mandatory} field.
     *
     * @return null
     */
    public Mandatory getMandatory() {
        return null;
    }

    /**
     * {@inheritDoc}
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
     * {@inheritDoc}
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
     * {@inheritDoc}
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
