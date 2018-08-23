package naipmoro.gramm;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

//import static naipmoro.mmx.MMParseTreeListener.*;

public class ScopeStack implements MMScopeStack<Scope> {

    private static final long serialVersionUID = 1L;

    private Deque<Scope> scopeStack = new ArrayDeque<>();

    private int hypCount = 0;
    private int errors = 0;
    private int warnings = 0;
    private int attemptedProofs = 0;
    private int verifiedProofs = 0;
    private Set<String> constants = new HashSet<>();
    private Set<String> allVars = new HashSet<>();
    private Set<String> labels = new HashSet<>();
    // private ArrayList<String> varHypLabels = new ArrayList<>();
    // private ArrayList<String> logicalHypLabels = new ArrayList<>();
    // private Map<String, Assertion> labelAssertionMap = new HashMap<>();

    // public int incHypCount() {
    // return this.hypCount++;
    // }

    public void push(Scope scope) {
        scopeStack.push(scope);
    }

    public void remove() {
        scopeStack.remove();
    }

    public Scope peek() {
        return scopeStack.peek();
    }

    public Scope peekLast() {
        return scopeStack.peekLast();
    }

    public Iterator<Scope> iterator() {
        return scopeStack.iterator();
    }

    /**
     * Returns the set of global constants.
     *
     * @return the constants
     */
    public Set<String> getConstants() {
        return this.constants;
    }

    /**
     * Returns the number of hypotheses.
     *
     * @return the hypCount
     */
    public int getHypCount() {
        return hypCount;
    }

    /**
     * Returns the number of errors.
     *
     * @return the errors
     */
    int getErrors() {
        return errors;
    }

    /**
     * Returns the number of warnings.
     *
     * @return the warnings
     */
    int getWarnings() {
        return warnings;
    }

    /**
     * Returns the number of attempted proofs.
     *
     * @return the attemptedProofs
     */
    int getAttemptedProofs() {
        return attemptedProofs;
    }

    /**
     * Returns the number of verified proofs.
     *
     * @return the verifiedProofs
     */
    int getVerifiedProofs() {
        return verifiedProofs;
    }

    /**
     * Increases the number of errors by one.
     */
    void incErrors() {
        this.errors++;
    }

    /**
     * Increases the number of warnings by one.
     */
    void incWarnings() {
        this.warnings++;
    }

    /**
     * Increases the number of attempted proofs by one.
     */
    void incAttemptedProofs() {
        this.attemptedProofs++;
    }

    /**
     * Increases the number of verified proofs by one.
     */
    void incVerifiedProofs() {
        this.verifiedProofs++;
    }

    String endMessage() {
        int errs = getErrors();
        int warns = getWarnings();
        int attempted = getAttemptedProofs();
        int verified = getVerifiedProofs();
        return String.format(
                "%n%d errors%n" + "%d warnings%n" + "%d of %d proofs were verified", errs, warns,
                verified, attempted);
    }

    private Scope getToplevel() {
        return this.peekLast();
    }

    Map<String, Statement> getToplevelStmtsByLabel() {
        return getToplevel().getStmtsByLabel();
    }

    /**
     * Adds a string array of symbols to the set of database constants. Issues a
     * warning, but does not abort the operation, if any of the symbols is
     * already either a constant or a statement label.
     *
     * @param cns the string array of symbols
     * @throws MMException if a symbol being added to constants was previously used as a
     *                     variable
     */
    void addConstants(String[] cns) throws MMException {
        for (String cn : cns) {
            if (this.allVars.contains(cn)) {
                throw new MMException("constant " + cn + " is already declared as a var");
            }
            if (this.labels.contains(cn)) {
                System.out.format("warning: %s is already declared as a statement label%n", cn);
                this.incWarnings();
            }
            boolean isUnique = this.constants.add(cn);
            if (!isUnique) {
                System.out.format("warning: %s is already declared as a constant%n", cn);
                this.incWarnings();
            }
        }
    }

    void addVars(String[] vars) throws MMException {
        Scope scope = this.peek();
        for (String var : vars) {
            if (this.constants.contains(var)) {
                throw new MMException("variable " + var + " is already declared as a constant");
            }
            if (this.labels.contains(var)) {
                System.out.format("warning: %s is already declared as a statement label%n", var);
                this.incWarnings();
            }
            if (isActiveVar(var)) {
                System.out.format("warning: %s is already a variable in the active scope%n", var);
                this.incWarnings();
            }
            scope.addToVariables(var);
            this.allVars.add(var);
        }
    }

    void addVarHyp(String label, String type, String var) throws MMException {
        checkVarHyp(label, type, var);
        Scope scope = this.peek();
        Hypothesis hyp = new Hypothesis(label, "$f", type, new String[]{var}, ++hypCount);
        scope.addToLabelsByVar(var, label);
        // scope.labelStatMap.put(label, hyp); // needed?
        scope.addToHypsByLabel(label, hyp); // FIXME
        scope.addToStmtsByLabel(label, hyp);
        scope.addToVarHypsByVar(var, hyp);
        this.labels.add(label);
    }

    void addLogHyp(String label, String type, String[] stmt) throws MMException {
        checkLabelAndType(label, type);
        Scope scope = this.peek();
        for (String sym : stmt) {
            if (this.constants.contains(sym)) {
                continue;
            }
            if (!isActiveVar(sym)) {
                throw new MMException(sym + " is not a constant or active variable");
            }
            Hypothesis varHyp = getActiveVarHypByVar(sym);
            if (varHyp == null) {
                throw new MMException(
                        "variable " + sym + " is not assigned a type in the active scope");
            }
            // Hypothesis mandVarHyp = getActiveLabelHyp(varLabel);
            // varHyps in logicalHyps are ALWAYS mandatory
            scope.addToMandVarHyps(varHyp);
            // vars in logicalHyps are ALWAYS mandatory
            scope.addToMandVars(sym);
        }
        //String stmtStr = String.join(" ", stmt);
        Hypothesis logHyp = new Hypothesis(label, "$e", type, stmt, ++hypCount);
        // scope.labelStmtMap.put(label, hyp); // needed?
        scope.addToHypsByLabel(label, logHyp); // FIXME
        scope.addToStmtsByLabel(label, logHyp);
        scope.addToMandLogHyps(logHyp); // logicalHyps are ALWAYS mandatory
        this.labels.add(label);
    }

    /**
     * Takes an array of at least two variables (guaranteed by the parser),
     * checks that the variables are unique, creates all possible disjoint
     * variable pairs (DVPs) from the array, and adds each pair to the local
     * scope's DVP list.
     *
     * @param vars a string array of variables generated by
     *             {@link MMParseTreeListener#exitDisjointVars}
     * @throws MMException by way of {@link #checkDisjVars} if the uniqueness
     *                     check fails
     */
    void addDisjVars(String[] vars) throws MMException {
        // Set<String> varSet = new HashSet<>(Arrays.asList(vars));
        checkDisjVars(vars);
        Scope scope = this.peek();
        int vsize = vars.length;
        if (vsize == 2) {
            scope.addToDisjVarPairs(new DisjPair(vars[0], vars[1]));
        } else {
            // Arrays.sort(vars);
            for (int i = 0; i < vsize - 1; ++i) {
                String s1 = vars[i];
                for (int j = i + 1; j < vsize; ++j) {
                    String s2 = vars[j];
                    scope.addToDisjVarPairs(new DisjPair(s1, s2));
                }
            }
        }
    }

    void addTheorem(String label, String type, String[] stmt, String[] proofList)
            throws MMException {
        checkLabelAndType(label, type);
        //String stmtStr = String.join(" ", stmt);
        Mandatory mand = getActiveMandatory(stmt);
        Proof proof = new Proof(this, label, type, stmt, proofList, mand);
        if (proof.verify()) {
            addAssertion(label, "$p", type, stmt, mand);
            // if (verifyProof(label, type, stmtStr, proofList)) {
            // addAssertion(label, type, stmt, stmtStr);
        }

    }

    void addAxiom(String label, String type, String[] stmt) throws MMException {
        checkLabelAndType(label, type);
        //String stmtStr = String.join(" ", stmt);
        Mandatory mand = getActiveMandatory(stmt);
        addAssertion(label, "$a", type, stmt, mand);
    }

    /**
     * Given a string array representing the body of a theorem or axiom, returns
     * the {@link Mandatory} object associated with the statement.
     *
     * @param stmt
     * @return
     * @throws MMException
     */
    private Mandatory getActiveMandatory(String[] stmt) throws MMException {
        Set<Hypothesis> logHypSet = getActiveMandLogHyps();
        Set<Hypothesis> varHypSet = getActiveMandVarHyps();
        Set<String> varsSet = getActiveMandVars();
        // checking the semantics of the stmt
        for (String sym : stmt) {
            if (this.constants.contains(sym)) {
                continue;
            }
            if (!isActiveVar(sym)) {
                throw new MMException(sym + " is not a constant or active variable");
            }
            Hypothesis varHyp = getActiveVarHypByVar(sym);
            if (varHyp == null) {
                throw new MMException(
                        "variable " + sym + " has not been assigned a type in the active scope");
            }
            varHypSet.add(varHyp);
            varsSet.add(sym); // is this needed?
        }
        // combine the varHyps with the logHyps into a list...
        logHypSet.addAll(varHypSet);
        List<Hypothesis> hypList = new ArrayList<>(logHypSet);
        // ...and sort the hypotheses according to their order of appearance in the
        // database
        Collections.sort(hypList);
        //System.out.println(hypList); // TESTING
        Set<DisjPair> disjPairs = getActiveDisjVarPairs();
        return new Mandatory(varsSet, hypList, disjPairs);
    }

    /**
     * @param label the name of the assertion
     * @param type  the type of the assertion
     * @param stmt  the statement of the assertion expressed as an array of
     *              symbols
     */
    private void addAssertion(String label, String kind, String type, String[] stmt,
                             Mandatory mand) {
        // // Set<Hypothesis> hypSet = new HashSet<>();
        // // Set<String> varSet = new HashSet<>();
        // Set<Hypothesis> logHypSet = getActiveMandLogHyps();
        // Set<Hypothesis> varHypSet = getActiveMandVarHyps();
        // Set<String> varsSet = getActiveMandVars();
        // for (String sym : stmt) {
        // if (this.constants.contains(sym)) {
        // continue;
        // }
        // if (!isActiveVar(sym)) {
        // throw new MMException(sym + " is not a constant or active variable");
        // }
        // Hypothesis varHyp = getActiveVarHypByVar(sym);
        // if (varHyp == null) {
        // throw new MMException(
        // "variable " + sym + " has not been assigned a type in the active
        // scope");
        // }
        // // Hypothesis hyp = getActiveLabelHyp(varLabel);
        // varHypSet.add(varHyp);
        // varsSet.add(sym); // is this needed?
        // }
        // // combine the varHyps with the logHyps into a list
        // logHypSet.addAll(varHypSet);
        // // Set<Hypothesis> logHypSet = getActiveMandLogHyps();
        // // hypSet.addAll(logHypSet);
        // // Set<Hypothesis> varHypSet = getActiveMandVarHyps();
        // // hypSet.addAll(varHypSet);
        // // sort the list according to the hyps order of appearance in the
        // // database
        // List<Hypothesis> hypList = new ArrayList<Hypothesis>(logHypSet);
        // // hypList.addAll(hypSet);
        // Collections.sort(hypList);
        // System.out.println(hypList); // TESTING
        // Set<DisjPair> disjPairs = getActiveDisjVarPairs();
        // // the disjPairs have to be filtered to those where both members are
        // in
        // // varList
        // List<DisjPair> mandDisjPairs = new ArrayList<>();
        // for (DisjPair disjPair : disjPairs) {
        // if (varsSet.contains(disjPair.getLeft()) &&
        // varsSet.contains(disjPair.getRight())) {
        // mandDisjPairs.add(disjPair);
        // }
        // }
        // // Set<String> varList = new HashSet<>();
        // // varList.addAll(varSet);
        // Mandatory mand = new Mandatory(varsSet, hypList, mandDisjPairs);

        // Map<String, Assertion> TopAssertsByLabel =
        // getToplevelAssertsByLabel(); // FIXME
        Map<String, Statement> TopStmtsByLabel = getToplevelStmtsByLabel();
        // assertions are placed in the top level scope to ensure that they're
        // always active
        TopStmtsByLabel.put(label, new Assertion(label, kind, type, stmt, mand));
        // TopAssertsByLabel.put(label, new Assertion(label, "$a", type,
        // stmtStr,
        // mand)); // FIXME
        this.labels.add(label);
    }

    public void checkConst(String cn) throws MMException {
        if (this.constants.contains(cn)) {
            throw new MMException("constant " + cn + " is already declared");
        }
        if (this.allVars.contains(cn)) {
            throw new MMException("constant " + cn + " is already declared as a var");
        }
    }

    //    public void checkVar(String var) throws MMException {
    //        if (isActiveVar(var)) {
    //            throw new MMException("variable " + var + " is already declared in the active
    // scope");
    //        }
    //        if (this.constants.contains(var)) {
    //            throw new MMException("variable " + var + " is already declared as a constant");
    //        }
    //    }

    private void checkVarHyp(String label, String type, String var) throws MMException {
        checkLabelAndType(label, type);
        if (!isActiveVar(var)) {
            throw new MMException("variable " + var + " is not declared in the active scope");
        }
        Scope scope = this.peek();
        Hypothesis hyp = scope.getVarHypsByVar().get(var);
        if (hyp != null) {
            String activeType = hyp.getType();
            if (type.equals(activeType)) {
                System.out.format(
                        "warning: variable %s is already defined as type %s in the active scope",
                        var, type);
                this.incWarnings();
            } else {
                throw new MMException("variable " + var + " is defined as the different type "
                                      + activeType + " in the active scope");
            }
        }
    }

    /**
     * Checks that the variables in string array vars are unique.
     *
     * @param vars a string array of variables
     * @throws MMException
     */
    private void checkDisjVars(String[] vars) throws MMException {
        Set<String> set = new HashSet<>();
        for (String var : vars) {
            if (!set.add(var)) {
                throw new MMException(
                        "variable " + var + " is repeated in $d statement " + Arrays.toString(vars)
                        + "; all variables in a $d statement must be unique");
            }
        }
    }

    private void checkLabelAndType(String label, String type) throws MMException {
        if (this.labels.contains(label)) {
            throw new MMException("label " + label + " is defined more than once");
        }
        if (!this.constants.contains(type)) {
            throw new MMException("constant " + type + " has not been declared");
        }
        if (this.allVars.contains(type)) {
            throw new MMException("constant " + type + " is already declared as a var");
        }
    }

    private Boolean isActiveVar(String var) {
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            if (scope.getVariables().contains(var)) {
                return true;
            }
        }
        return false;
    }

//    public Boolean isActiveVarHyp(String var) {
//        Iterator<Scope> iter = this.iterator();
//        while (iter.hasNext()) {
//            Scope scope = iter.next();
//            if (scope.getLabelsByVar().containsKey(var)) {
//                return true;
//            }
//        }
//        return false;
//    }

    Boolean isVarTypeHyp(Hypothesis hyp) {
        return hyp.getKind().equals("$f");
    }

    Boolean isHypothesis(Statement stmt) {
        String kind = stmt.getKind();
        return (kind.equals("$f") || kind.equals("$e"));
    }

    // public String getActiveLabelByVar(String var) {
    // for (int i = this.size() - 1; i >= 0; i--) {
    // Scope frame = this.elementAt(i);
    // if (!(frame.labelsByVar.get(var) == null)) {
    // return frame.labelsByVar.get(var);
    // }
    // }
    // return EMPTY;
    // }

    private Hypothesis getActiveVarHypByVar(String var) {
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            Hypothesis hyp = scope.getVarHypsByVar().get(var);
            if (hyp != null) {
                return hyp;
            }
        }
        return null;
    }

    private Set<DisjPair> getActiveDisjVarPairs() {
        Set<DisjPair> disjPairs = new HashSet<>();
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            disjPairs.addAll(scope.getDisjVarPairs());
        }
        return disjPairs;
    }

    private Set<Hypothesis> getActiveMandLogHyps() {
        Set<Hypothesis> logHyps = new HashSet<>();
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            logHyps.addAll(scope.getMandLogHyps());
        }
        return logHyps;
    }

    private Set<Hypothesis> getActiveMandVarHyps() {
        Set<Hypothesis> varHyps = new HashSet<>();
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            varHyps.addAll(scope.getMandVarHyps());
        }
        return varHyps;
    }

    private Set<String> getActiveMandVars() {
        Set<String> vars = new HashSet<>();
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            vars.addAll(scope.getMandVars());
        }
        return vars;
    }

    // public Statement getActiveLabelStmt(String label) {
    // for (int i = this.size() - 1; i >= 0; i--) {
    // Scope frame = this.elementAt(i);
    // Statement stmt = frame.labelStmtMap.get(label);
    // if (stmt == null) {
    // continue;
    // } else {
    // return stmt;
    // }
    // }
    // throw new MMException(String.format("label %s is not defined as a
    // statement", label));
    // }

    public Hypothesis getActiveHypByLabel(String label) {
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            Hypothesis hyp = scope.getHypsByLabel().get(label);
            if (hyp != null) {
                return hyp;
            }
        }
        return null;
        // throw new MMException(String.format("label %s is not defined as a
        // statement", label));
    }

    Statement getActiveStmtByLabel(String label) {
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            Statement stmt = scope.getStmtsByLabel().get(label);
            if (stmt != null) {
                return stmt;
            }
        }
        return null;
    }

    public boolean validateSubstitutions(String[] sub1, String[] sub2, Set<DisjPair> thmDisj) {
        Set<String> vars1 = new HashSet<String>();
        Set<String> vars2 = new HashSet<String>();
        for (String elem1 : sub1) {
            if (!this.constants.contains(elem1)) {
                vars1.add(elem1);
            }
        }
        for (String elem2 : sub2) {
            if (!this.constants.contains(elem2)) {
                vars2.add(elem2);
            }
        }
        boolean isCommon = vars1.retainAll(vars2);
        if (isCommon) {
            //            System.out.format(
            //                    "error: proof of %s failed due to a violation of the
            // assertion's disjoint "
            //                    + "variable restriction: substitutions %s and %s "
            //                            + "have common variable(s) %s%n"
            //                    this.label, , rightVar);
            //            this.incErrors();
            return false;
        }
        Set<DisjPair> varProduct = this.generateVarProduct(vars1, vars2);
        for (DisjPair disj : varProduct) {
            if (!thmDisj.contains(disj)) {
                return false;
            }
        }
        return true;
    }

    private Set<DisjPair> generateVarProduct(Set<String> vars1, Set<String> vars2) {
        Set<DisjPair> product = new HashSet<>();
        for (String var1 : vars1) {
            for (String var2 : vars2) {
                product.add(new DisjPair(var1, var2));
            }
        }
        return product;
    }

    public boolean isCommonVars(String[] arr1, String[] arr2) {
        Set<String> vars = new HashSet<>();
        for (String elem : arr1) {
            if (!this.constants.contains(elem)) {
                vars.add(elem);
            }
        }
        for (String elem : arr2) {
            if (vars.contains(elem)) {
                return true;
            }
        }
        return false;
    }

    // public Boolean checkAssertion(String sym) {
    // return true;
    // }
}
