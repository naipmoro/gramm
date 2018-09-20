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
     * @param hyps the list of mandatory hypotheses, <emph>assumed to be
     *             ordered</emph> according to their order field
     * @param disj the set of mandatory disjoint variable pairs
     */

    Mandatory(List<Hypothesis> hyps, Set<DisjPair> disj) {
        this.hyps = hyps;
        this.disj = disj;
    }

    /**
     * Returns the list of mandatory hypotheses, <emph>assumed to be
     * ordered</emph> according to their order field.
     *
     * @return the list of ordered mandatory hypotheses
     */
    List<Hypothesis> getHyps() {
        return this.hyps;
    }

    /**
     * Returns the set of mandatory disjoint variable pairs.
     *
     * @return the set of mandatory disjoint variable pairs
     */
    public Set<DisjPair> getDisj() {
        return this.disj;
    }

}
