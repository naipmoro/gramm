package naipmoro.gramm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * A class to represent a metamath scope.
 */
public class Scope {
    private List<String> variables = new ArrayList<String>();
    private Set<DisjPair> disjVarPairs = new HashSet<DisjPair>();
    private Set<Hypothesis> mandVarHyps = new HashSet<Hypothesis>();
    private Set<Hypothesis> mandLogHyps = new HashSet<Hypothesis>();
    //private Map<String, String> labelsByVar = new HashMap<String, String>();
    private Map<String, Statement> stmtsByLabel = new HashMap<String, Statement>();
    private Map<String, Hypothesis> varHypsByVar = new HashMap<String, Hypothesis>();

    public List<String> getVariables() {
        return variables;
    }

    void addToVariables(String var) {
        this.variables.add(var);
    }

    Set<DisjPair> getDisjVarPairs() {
        return disjVarPairs;
    }

    void addToDisjVarPairs(DisjPair dp) {
        this.disjVarPairs.add(dp);
    }

//    public Set<String> getMandVars() {
//        return mandVars;
//    }

//    public void addToMandVars(String var) {
//        this.mandVars.add(var);
//    }

    Set<Hypothesis> getMandVarHyps() {
        return mandVarHyps;
    }

    void addToMandVarHyps(Hypothesis hyp) {
        this.mandVarHyps.add(hyp);
    }

    Set<Hypothesis> getMandLogHyps() {
        return mandLogHyps;
    }

    void addToMandLogHyps(Hypothesis hyp) {
        this.mandLogHyps.add(hyp);
    }

//    public Map<String, String> getLabelsByVar() {
//        return labelsByVar;
//    }

//    public void addToLabelsByVar(String var, String label) {
//        this.labelsByVar.put(var, label);
//    }

    public Map<String, Statement> getStmtsByLabel() {
        return stmtsByLabel;
    }

    public void addToStmtsByLabel(String label, Statement stmt) {
        this.stmtsByLabel.put(label, stmt);
    }

//    public Map<String, Hypothesis> getHypsByLabel() {
//        return hypsByLabel;
//    }

//    public void addToHypsByLabel(String label, Hypothesis hyp) {
//        this.hypsByLabel.put(label, hyp);
//    }

    public Map<String, Hypothesis> getVarHypsByVar() {
        return varHypsByVar;
    }

    public void addToVarHypsByVar(String var, Hypothesis hyp) {
        this.varHypsByVar.put(var, hyp);
    }

}
