package naipmoro.gramm;

import java.util.List;
import java.util.Set;

/**
 * The mandatory elements of a Metamath assertion.
 */
public class Mandatory {
    private final List<Hypothesis> hyps;
    private final Set<DisjPair> disj;

    /**
     * Mandatory constructor.
     *
     * @param hyps the list of mandatory hypotheses, assumed to be ordered
     *             according to the hypotheses' order field
     * @param disj the set of mandatory disjoint variable pairs
     */

    Mandatory(List<Hypothesis> hyps, Set<DisjPair> disj) {
        this.hyps = hyps;
        this.disj = disj;
    }

    /**
     * Returns a list of mandatory hypotheses, which are expected to be sorted
     * according to their order field.
     *
     * @return a list of ordered hypotheses
     */
    List<Hypothesis> getHyps() {
        return this.hyps;
    }

    /**
     * Returns Mandatory's set of disjoint variable pairs
     *
     * @return a set of disjoint variable pairs
     */
    public Set<DisjPair> getDisj() {
        return this.disj;
    }

}
