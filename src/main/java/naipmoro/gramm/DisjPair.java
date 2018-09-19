package naipmoro.gramm;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
//import java.util.Objects;
import java.util.Set;

/**
 * A Metamath disjoint variable pair.
 */
public class DisjPair {

    private final String left;
    private final String right;

    /**
     * DisjPair constructor.
     *
     * @param left  the left side of he pair
     * @param right the right side of he pair
     */
    DisjPair(String left, String right) {
        this.left = left;
        this.right = right;
    }

    /**
     * Returns the left, or first, side of the DisjPair.
     *
     * @return the left side of the DisjPair.
     */
    public String getLeft() {
        return this.left;
    }

    /**
     * Returns the right, or second, side of the DisjPair.
     *
     * @return the right side of the DisjPair.
     */
    public String getRight() {
        return this.right;
    }

    /**
     * Determines if two disjoint variable pairs are equal. Specifically,
     * two DisjPairs are equal if they contain the same two variables,
     * regardless of order.
     *
     * @param obj the object being compared to the DisjPair.
     * @return true if the object being compared is equal to the DisjPair,
     * false otherwise.
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
     * {@inheritDoc}
     */
    @Override
    public int hashCode() {
        return (this.left.hashCode() + this.right.hashCode());
    }

    /**
     * {@inheritDoc}
     */
    public String toString() {
        return "<" + left + ", " + right + ">";
    }

    /**
     * Given a set of string variables, generates the set of all possible
     * DisjPairs from the variables. This method is not used and is included
     * only for reference.
     *
     * @param set a set of string variables
     * @return the set of all possible DisjPairs generated from the variables
     */
    public static Set<DisjPair> toDisjPairs(Set<String> set) {
        List<String> list = new ArrayList<>(set);
        Set<DisjPair> allDisjPairs = new HashSet<>();
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

    /**
     * Given two disjoint sets, generates their cartesian product as DisjPairs.
     *
     * @param vars1 a set of variables, none of whose elements are in vars2
     * @param vars2 a set of variables, none of whose elements are in vars1
     * @return the cartesian product of sets vars1 and vars2 as DisjPairs
     */
    static Set<DisjPair> toDisjProduct(Set<String> vars1, Set<String> vars2) {
        Set<DisjPair> product = new HashSet<>();
        for (String var1 : vars1) {
            for (String var2 : vars2) {
                product.add(new DisjPair(var1, var2));
            }
        }
        return product;
    }
}
