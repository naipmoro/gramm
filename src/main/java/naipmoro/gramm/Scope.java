package naipmoro.gramm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * A data container class to represent a scope.
 */
public class Scope {
    private List<String> variables = new ArrayList<String>();
    private Set<DisjPair> disjVarPairs = new HashSet<DisjPair>();
    private Set<String> mandVars = new HashSet<String>();
    private Set<Hypothesis> mandVarHyps = new HashSet<Hypothesis>();
    private Set<Hypothesis> mandLogHyps = new HashSet<Hypothesis>();
    private Map<String, String> labelsByVar = new HashMap<String, String>();
    private Map<String, Statement> stmtsByLabel = new HashMap<String, Statement>();
    private Map<String, Assertion> assertsByLabel = new HashMap<String, Assertion>();
    private Map<String, Hypothesis> hypsByLabel = new HashMap<String, Hypothesis>();
    private Map<String, Hypothesis> varHypsByVar = new HashMap<String, Hypothesis>();

    public List<String> getVariables() {
        return variables;
    }

    public void addToVariables(String var) {
        this.variables.add(var);
    }

    public Set<DisjPair> getDisjVarPairs() {
        return disjVarPairs;
    }

    public void addToDisjVarPairs(DisjPair dp) {
        this.disjVarPairs.add(dp);
    }

    public Set<String> getMandVars() {
        return mandVars;
    }

    public void addToMandVars(String var) {
        this.mandVars.add(var);
    }

    public Set<Hypothesis> getMandVarHyps() {
        return mandVarHyps;
    }

    public void addToMandVarHyps(Hypothesis hyp) {
        this.mandVarHyps.add(hyp);
    }

    public Set<Hypothesis> getMandLogHyps() {
        return mandLogHyps;
    }

    public void addToMandLogHyps(Hypothesis hyp) {
        this.mandLogHyps.add(hyp);
    }

    public Map<String, String> getLabelsByVar() {
        return labelsByVar;
    }

    public void addToLabelsByVar(String var, String label) {
        this.labelsByVar.put(var, label);
    }

    public Map<String, Statement> getStmtsByLabel() {
        return stmtsByLabel;
    }

    public void addToStmtsByLabel(String label, Statement stmt) {
        this.stmtsByLabel.put(label, stmt);
    }

    public Map<String, Hypothesis> getHypsByLabel() {
        return hypsByLabel;
    }

    public void addToHypsByLabel(String label, Hypothesis hyp) {
        this.hypsByLabel.put(label, hyp);
    }

    public Map<String, Hypothesis> getVarHypsByVar() {
        return varHypsByVar;
    }

    public void addToVarHypsByVar(String var, Hypothesis hyp) {
        this.varHypsByVar.put(var, hyp);
    }

}
