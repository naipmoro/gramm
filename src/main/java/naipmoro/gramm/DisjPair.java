package naipmoro.gramm;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

public class DisjPair {

    private final String left;
    private final String right;

    public DisjPair(String left, String right) {
        this.left = left;
        this.right = right;
    }

    public String getLeft() {
        return this.left;
    }

    public String getRight() {
        return this.right;
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
        if (!(obj instanceof DisjPair)) {
            return false;
        }
        DisjPair dp = (DisjPair) obj;
        return (this.left.equals(dp.left) && this.right.equals(dp.right))
               || (this.left.equals(dp.right) && this.right.equals(dp.left));

    }

    /**
     * @return
     */
    @Override
    public int hashCode() {
        return (this.left.hashCode() + this.right.hashCode());
    }

    public String toString() {
        return "<" + left + ", " + right + ">";
    }

    /**
     * Given a set of string variables, returns the set of all possible DisjPair
     * instances among the variables.
     *
     * @param set
     *            a set of string variables
     *
     * @return the set of all possible DisjPair instances among the variables
     */
    public static Set<DisjPair> toDisjPairs(Set<String> set) {
        List<String> list = new ArrayList<String>(set);
        Set<DisjPair> allDisjPairs = new HashSet<DisjPair>();
        int listSize = list.size();
        for (int i = 0; i < listSize - 1; ++i) {
            String s1 = list.get(i);
            for (int j = i + 1; j < listSize; ++j) {
                String s2 = list.get(j);
                allDisjPairs.add(new DisjPair(s1, s2));
            }
        }
        return allDisjPairs;
    }

    public static Set<DisjPair> toDisjProduct(Set<String> vars1, Set<String> vars2) {
        Set<DisjPair> product = new HashSet<DisjPair>();
        for (String var1 : vars1) {
            for (String var2 : vars2) {
                product.add(new DisjPair(var1, var2));
            }
        }
        return product;
    }
}
