package naipmoro.gramm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * A Metamath scope.
 */
public class Scope {

    /** The scope's list of variables. */
    private List<String> variables = new ArrayList<>();

    /** The scope's set of disjoint variable pairs. */
    private Set<DisjPair> disjVarPairs = new HashSet<>();

    /** The scope's set of mandatory variable-type hypotheses. */
    private Set<Hypothesis> mandVarHyps = new HashSet<>();

    /** The scope's set of mandatory logical hypotheses. */
    private Set<Hypothesis> mandLogHyps = new HashSet<>();

    /** The scope's label-to-statement hashmap. */
    private Map<String, Statement> stmtsByLabel = new HashMap<>();

    /** The scope's variable-to-var-type-hypothesis hashmap. */
    private Map<String, Hypothesis> varHypsByVar = new HashMap<>();

    /**
     * Returns the scope's list of variables.
     *
     * @return the scope's list of variables
     */
    public List<String> getVariables() {
        return variables;
    }

    /**
     * Adds a variable to the scope's list of variables.
     *
     * @param var the {@code String} variable being added to the scope's
     *            list of variables
     */
    void addToVariables(String var) {
        this.variables.add(var);
    }

    /**
     * Returns the scope's set of disjoint variable pairs.
     *
     * @return the scope's set of disjoint variable pairs
     */
    Set<DisjPair> getDisjVarPairs() {
        return disjVarPairs;
    }

    /**
     * Adds a disjoint variable pair to the scope's set of disjoint variable
     * pairs.
     *
     * @param dp the {@code DisjPair} being added to the scope's set of
     *           disjoint variable pairs
     */
    void addToDisjVarPairs(DisjPair dp) {
        this.disjVarPairs.add(dp);
    }

    /**
     * Returns the scope's set of mandatory variable-type hypotheses.
     *
     * @return the scope's set of mandatory variable-type hypotheses
     */
    Set<Hypothesis> getMandVarHyps() {
        return mandVarHyps;
    }

    /**
     * Adds a mandatory variable-type hypothesis to the scope's set of such
     * hypotheses.
     *
     * @param hyp the {@code Hypothesis} being added to the scope's set of
     *            mandatory variable-type hypotheses
     */
    void addToMandVarHyps(Hypothesis hyp) {
        this.mandVarHyps.add(hyp);
    }

    /**
     * Returns the scope's set of mandatory logical hypotheses.
     *
     * @return the scope's set of mandatory logical hypotheses
     */
    Set<Hypothesis> getMandLogHyps() {
        return mandLogHyps;
    }

    /**
     * Adds a mandatory logical hypothesis to the scope's set of such
     * hypotheses.
     *
     * @param hyp a {@code Hypothesis}
     */
    void addToMandLogHyps(Hypothesis hyp) {
        this.mandLogHyps.add(hyp);
    }

    /**
     * Returns the scope's label-to-statement hashmap.
     *
     * @return the scope's label-to-statement hashmap
     */
    Map<String, Statement> getStmtsByLabel() {
        return stmtsByLabel;
    }

    /**
     * Adds an entry to the scope's label-to-statement hashmap.
     *
     * @param label an identifying {@code String} label as the hashmap's key
     * @param stmt  a {@code Statement} as the hashmap's value
     */
    void addToStmtsByLabel(String label, Statement stmt) {
        this.stmtsByLabel.put(label, stmt);
    }

    /**
     * Returns the scope's variable-to-var-type-hypothesis hashmap.
     *
     * @return the scope's variable-to-var-type-hypothesis hashmap
     */
    Map<String, Hypothesis> getVarHypsByVar() {
        return varHypsByVar;
    }

    /**
     * Adds an entry to the scope's variable-to-hypothesis hashmap.
     *
     * @param var a {@code String} variable as the hashmap's key
     * @param hyp a {@code Hypothesis} as the hashmap's value
     */
    void addToVarHypsByVar(String var, Hypothesis hyp) {
        this.varHypsByVar.put(var, hyp);
    }

}
