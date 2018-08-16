package naipmoro.gramm;

import java.util.Arrays;

/**
 * A class to represent metamath hypotheses, either variable type hypotheses
 * ($f) or logical hypotheses ($e).
 */
public class Hypothesis implements Statement, Comparable<Hypothesis> {
    private final String label;
    private final String kind;
    private final String type;
    private final String[] body;
    private final int order;

    /**
     * A Hypothesis constructor.
     *
     * @param label
     * @param kind
     * @param type
     * @param body
     * @param order
     */
    public Hypothesis(String label, String kind, String type, String[] body, int order) {
        this.label = label;
        this.kind = kind;
        this.type = type;
        this.body = body;
        this.order = order;
    }

    /**
     * @return the name of the hypothesis
     */
    public String getLabel() {
        return this.label;
    }

    /**
     * @return the kind of hypothesis: either '$f' for a variable-type
     * hypothesis or '$e' for a logical hypothesis
     */
    public String getKind() {
        return this.kind;
    }

    /**
     * @return the type of hypothesis: type could be any metamath string
     * constant
     */
    public String getType() {
        return this.type;
    }

    public String[] getBody() {
        return this.body;
    }

    /**
     * Hypotheses lack a {@link Mandatory} field.
     *
     * @return null
     */
    public Mandatory getMandatory() {
        return null;
    }

    public StatementCore getStmtCore() {
        return new StatementCore(this.type, this.body);
    }

    //    @Override
    //    public int compareTo(Hypothesis o) {
    //        return Integer.valueOf(this.order).compareTo(Integer.valueOf(o.order));
    //    }

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


    //    @Override
    //    public boolean equals(Object obj) {
    //        if (this == obj) {
    //            return true;
    //        }
    //        if (obj == null) {
    //            return false;
    //        }
    //        if (!(obj instanceof Hypothesis)) {
    //            return false;
    //        }
    //        Hypothesis hyp = (Hypothesis) obj;
    //        return this.label.equals(hyp.label) && this.kind.equals(hyp.kind)
    //                && this.type.equals(hyp.type) && this.body.equals(hyp.body);
    //    }

    //    @Override
    //    public int hashCode() {
    //        int result = 17;
    //        result = 31 * result + label.hashCode();
    //        result = 31 * result + kind.hashCode();
    //        result = 31 * result + type.hashCode();
    //        result = 31 * result + body.hashCode();
    //        return result;
    //    }


    /**
     * @return
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
     * @param obj
     * @return
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
