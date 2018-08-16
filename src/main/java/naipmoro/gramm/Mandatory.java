package naipmoro.gramm;

import java.util.List;
import java.util.Set;

/**
 * A class to represent the mandatory elements of an assertion. This is not
 * quite the same as metamath's mandatory elements. According to the metamath
 * specification, an assertion's disjoint variable pairs are considered a
 * separate structure, whereas here we include them in Mandatory.
 */
public class Mandatory {
    private final Set<String> vars;
    private final List<Hypothesis> hyps;
    private final Set<DisjPair> disj;

    /**
     * Constructs the mandatory elements.
     *
     * @param vars the set of mandatory variables
     * @param hyps the list of mandatory hypotheses, assumed to be ordered
     *             according to the hypotheses' order field
     * @param disj the set of mandatory disjoint variable pairs
     */

    public Mandatory(Set<String> vars, List<Hypothesis> hyps, Set<DisjPair> disj) {
        this.vars = vars;
        this.hyps = hyps;
        this.disj = disj;
    }

    /**
     * @return the vars
     */
    public Set<String> getVars() {
        return this.vars;
    }

    /**
     * @return the hyps, which are expected to be sorted according to their
     * order field
     */
    public List<Hypothesis> getHyps() {
        return this.hyps;
    }

    /**
     * @return the disj
     */
    public Set<DisjPair> getDisj() {
        return this.disj;
    }

}
