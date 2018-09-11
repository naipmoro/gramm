package naipmoro.gramm;

import java.io.File;
import java.net.URISyntaxException;
import java.nio.file.Path;
import java.nio.file.Paths;
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

/**
 * A class representing the global scope environment.
 */
public class ScopeStack implements Iterable<Scope> {

    private static final long serialVersionUID = 1L;

    /**
     * This implementation uses a deque for the scope stack.
     */
    private Deque<Scope> scopeStack = new ArrayDeque<>();
    /**
     * The global set of constants.
     */
    private Set<String> constants = new HashSet<>();
    /**
     * The global set of both active and inactive variables.
     */
    private Set<String> allVars = new HashSet<>();
    /**
     * The global set of statement id labels.
     */
    private Set<String> labels = new HashSet<>();

    /**
     * The total number of hypotheses. Incremented and added to each new
     * hypothesis as a construction parameter. Used to sort hypotheses by order
     * of appearance.
     */
    private int hypCount = 0;
    private int errors = 0;
    private int warnings = 0;
    private int attemptedProofs = 0;
    private int verifiedProofs = 0;

    String getJarPath() {
        File jarFile = null;
        try {
            jarFile = new File(Verifier.class
                    .getProtectionDomain()
                    .getCodeSource()
                    .getLocation()
                    .toURI()
                    .getPath());
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
        return Paths.get(jarFile.toString()).toAbsolutePath().toString();
    }

    /**
     * {@inheritDoc}
     */
    public void push(Scope scope) {
        scopeStack.push(scope);
    }

    /**
     * {@inheritDoc}
     */
    public Scope pop() {
        return scopeStack.pop();
    }

    /**
     * {@inheritDoc}
     */
    public void remove() {
        scopeStack.remove();
    }

    /**
     * {@inheritDoc}
     */
    public Scope peek() {
        return scopeStack.peek();
    }

    /**
     * {@inheritDoc}
     */
    public Scope peekLast() {
        return scopeStack.peekLast();
    }

    /**
     * {@inheritDoc}
     */
    public int size() {
        return scopeStack.size();
    }

    /**
     * {@inheritDoc}
     */
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

//    /**
//     * Returns the number of hypotheses.
//     *
//     * @return the hypCount
//     */
//    public int getHypCount() {
//        return hypCount;
//    }

    /**
     * Returns the number of errors.
     *
     * @return the errors
     */
    private int getErrors() {
        return errors;
    }

    /**
     * Returns the number of warnings.
     *
     * @return the warnings
     */
    private int getWarnings() {
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

    /**
     * The message string displayed at the end of database verification.
     *
     * @return a string to be displayed at the end of database verification
     */
    String endMessage() {
        int errs = getErrors();
        int warns = getWarnings();
        int attempted = getAttemptedProofs();
        int verified = getVerifiedProofs();
        if (attempted < 2000) {
            return String.format(
                    "%d errors%n" + "%d warnings%n" + "%d of %d proofs were verified", errs, warns,
                    verified, attempted);
        }
        return String.format(
                "%n%d errors%n" + "%d warnings%n" + "%d of %d proofs were verified", errs, warns,
                verified, attempted);
    }

    /**
     * Returns the toplevel scope.
     *
     * @return a {@code Scope}
     */
    private Scope getToplevel() {
        return this.peekLast();
    }

    /**
     * Returns the label->statement hashmap at the toplevel scope.
     *
     * @return the toplevel scope's {@code Scope#stmtsByLabel} hashmap
     */
    Map<String, Statement> getToplevelStmtsByLabel() {
        return getToplevel().getStmtsByLabel();
    }

    /**
     * Adds a string array of symbols to the global set of constants. Issues a
     * warning, but does not abort the operation, if any of the symbols is
     * already either a constant or a statement label.
     *
     * @param cns a string array of symbols
     * @throws MMException if a symbol being added is already declared as a
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

    /**
     * Adds a string array of variables to the active scope's list of
     * variables. Throws an exception if a variable is already declared as a
     * constant. Issues a warning, but does not abort the operation, if a
     * variable is already active in the scope or in use as a statement label.
     *
     * @param vars a string array of variables
     * @throws MMException if a variable is already declared as a constant
     */
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

    /**
     * Given the elements of a proposed variable-type hypothesis, checks that
     * the hypothesis is valid and then adds it to the active scope.
     *
     * @param label the identifying label of the variable-type hypothesis
     * @param type  a metamath constant
     * @param var   a variable
     * @throws MMException if the hypothesis fails the validity check
     */
    void addVarHyp(String label, String type, String var) throws MMException {
        checkVarHyp(label, type, var);
        Scope scope = this.peek();
        Hypothesis hyp = new Hypothesis(label, "$f", type, new String[]{var}, ++hypCount);
        //scope.addToLabelsByVar(var, label);
        scope.addToStmtsByLabel(label, hyp);
        scope.addToVarHypsByVar(var, hyp);
        this.labels.add(label);
    }

    /**
     * Given the elements of a proposed logical hypothesis, checks that the
     * hypothesis is valid and then adds it to the active scope.
     *
     * @param label the identifying label of the logical hypothesis
     * @param type  a metamath constant
     * @param stmt  a string array containing the body of the hypothesis
     * @throws MMException if an element of stmt is not active or, in case it
     *                     is a variable, if that variable is not assigned a
     *                     type in the active scope
     */
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
            // varHyps in logicalHyps are ALWAYS mandatory
            scope.addToMandVarHyps(varHyp);
        }
        Hypothesis logHyp = new Hypothesis(label, "$e", type, stmt, ++hypCount);
        scope.addToStmtsByLabel(label, logHyp);
        scope.addToMandLogHyps(logHyp); // logicalHyps are ALWAYS mandatory
        this.labels.add(label);
    }

    /**
     * Given an array of variables, checks that the variables are unique,
     * creates all possible disjoint variable pairs (DisjPairs) from the array,
     * and adds each pair to the local scope's DisjPair list. The parser
     * guarantees that the array will contain at least two variables.
     *
     * @param vars a string array of variables
     * @throws MMException if the uniqueness check fails
     */
    void addDisjVars(String[] vars) throws MMException {
        checkDisjVars(vars);
        Scope scope = this.peek();
        int vsize = vars.length;
        if (vsize == 2) {
            scope.addToDisjVarPairs(new DisjPair(vars[0], vars[1]));
        } else {
            for (int i = 0; i < vsize - 1; ++i) {
                String s1 = vars[i];
                for (int j = i + 1; j < vsize; ++j) {
                    String s2 = vars[j];
                    scope.addToDisjVarPairs(new DisjPair(s1, s2));
                }
            }
        }
    }

    /**
     * The elements of a proposed theorem are checked and passed to the
     * {@link #addAssertion} method.
     *
     * @param label     the identifying label of the theorem
     * @param type      a metatamath constant
     * @param stmt      a string array containing the theorem body
     * @param proofList a string array containing the proof of the theorem
     * @throws MMException if the theorem is an improperly constructed
     *                     statement
     */
    void addTheorem(String label, String type, String[] stmt, String[] proofList)
            throws MMException {
        checkLabelAndType(label, type);
        Mandatory mand = getActiveMandatory(stmt);
        Proof proof = new Proof(this, label, type, stmt, proofList, mand);
        if (proof.verify()) {
            addAssertion(label, "$p", type, stmt, mand);
        }

    }

    /**
     * The elements of a proposed axiom are checked and passed to the
     * {@link #addAssertion} method.
     *
     * @param label the identifying label of the axiom
     * @param type  a metatamath constant
     * @param stmt  a string array containing the axiom body
     * @throws MMException if the axiom is an improperly constructed statement
     */
    void addAxiom(String label, String type, String[] stmt) throws MMException {
        checkLabelAndType(label, type);
        Mandatory mand = getActiveMandatory(stmt);
        addAssertion(label, "$a", type, stmt, mand);
    }

    /**
     * Given a string array representing the body of a theorem or axiom, returns
     * the {@code Mandatory} object associated with the statement.
     *
     * @param stmt a string array representing the body of the assertion
     * @return the assertion's associated {@code Mandatory} object
     * @throws MMException if stmt is not a valid assertion body
     */
    private Mandatory getActiveMandatory(String[] stmt) throws MMException {
        Set<Hypothesis> logHypSet = getActiveMandLogHyps();
        Set<Hypothesis> varHypSet = getActiveMandVarHyps();
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
        }
        // combine the varHyps with the logHyps into a list...
        logHypSet.addAll(varHypSet);
        List<Hypothesis> hypList = new ArrayList<>(logHypSet);
        // ...and sort the hypotheses according to their order of appearance in the
        // database
        Collections.sort(hypList);
        //System.out.println(hypList); // TESTING
        Set<DisjPair> disjPairs = getActiveDisjVarPairs();
        return new Mandatory(hypList, disjPairs);
    }

    /**
     * Adds the constructed assertion to the toplevel scope, ensuring that it
     * is always active.
     *
     * @param label the identifying label of the assertion
     * @param kind  the kind of assertion, either "$a" for axioms or "$p" for
     *              theorems
     * @param type  a metamath constant
     * @param stmt  a string array conatining the body of the assertion
     * @param mand  the {@code Mandatory} object associated with the assertion
     */
    private void addAssertion(String label, String kind, String type, String[] stmt,
                              Mandatory mand) {
        Map<String, Statement> TopStmtsByLabel = getToplevelStmtsByLabel();
        TopStmtsByLabel.put(label, new Assertion(label, kind, type, stmt, mand));
        this.labels.add(label);
    }

    //    public void checkConst(String cn) throws MMException {
    //        if (this.constants.contains(cn)) {
    //            throw new MMException("constant " + cn + " is already declared");
    //        }
    //        if (this.allVars.contains(cn)) {
    //            throw new MMException("constant " + cn + " is already declared as a var");
    //        }
    //    }
    //
    //    public void checkVar(String var) throws MMException {
    //        if (isActiveVar(var)) {
    //            throw new MMException("variable " + var + " is already declared in the active
    //                    scope");
    //        }
    //        if (this.constants.contains(var)) {
    //            throw new MMException("variable " + var + " is already declared as a constant");
    //        }
    //    }

    /**
     * Given the label, type, and variable of a variable-type hypothesis,
     * checks that the hypothesis is valid. If not, throws an exception.
     *
     * @param label the identifying label of the hypothesis
     * @param type  a metamath constant
     * @param var   a variable
     * @throws MMException if the variable is not in the active scope or is
     *                     already defined as a different type.
     */
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
     * @throws MMException if the variables are not unique
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

    /**
     * Checks the validity of a label and type.
     *
     * @param label a statement's identifying label
     * @param type  a statement type
     * @throws MMException if the label is already in use, if the type is not
     *                     active, or if the type is already declared as a variable
     */
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

    /**
     * Checks if a variable is in the active scope.
     *
     * @param var a variable
     * @return true if var is in the active scope, false otherwise
     */
    private boolean isActiveVar(String var) {
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            if (scope.getVariables().contains(var)) {
                return true;
            }
        }
        return false;
    }

    /**
     * Checks if a hypothesis is a variable-type hypothesis.
     *
     * @param hyp a hypothesis
     * @return true if the kind of the hypothesis is "$f", false otherwise.
     */
    boolean isVarTypeHyp(Hypothesis hyp) {
        return hyp.getKind().equals("$f");
    }

    /**
     * Checks if a statement is a hypothesis.
     *
     * @param stmt a statement
     * @return true if the kind of the statement is either "$f" or "$e", false
     *         otherwise.
     */
    boolean isHypothesis(Statement stmt) {
        String kind = stmt.getKind();
        return (kind.equals("$f") || kind.equals("$e"));
    }

    /**
     * Given the variable of a variable-type hypothesis, returns that
     * hypothesis if it is in the active scope, otherwise returns null.
     *
     * @param var a variable
     * @return an active variable-type hypothesis or null
     */
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

    /**
     * Returns the set of all disjoint variable pairs in the active scope.
     *
     * @return a set of disjoint variable pairs
     */
    private Set<DisjPair> getActiveDisjVarPairs() {
        Set<DisjPair> disjPairs = new HashSet<>();
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            disjPairs.addAll(scope.getDisjVarPairs());
        }
        return disjPairs;
    }

    /**
     * Returns the set of all mandatory logical hypotheses in the active scope.
     *
     * @return a set of hypotheses
     */
    private Set<Hypothesis> getActiveMandLogHyps() {
        Set<Hypothesis> logHyps = new HashSet<>();
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            logHyps.addAll(scope.getMandLogHyps());
        }
        return logHyps;
    }

    /**
     * Returns the set of all mandatory variable-type hypotheses in the active
     * scope.
     *
     * @return a set of hypotheses
     */
    private Set<Hypothesis> getActiveMandVarHyps() {
        Set<Hypothesis> varHyps = new HashSet<>();
        Iterator<Scope> iter = this.iterator();
        while (iter.hasNext()) {
            Scope scope = iter.next();
            varHyps.addAll(scope.getMandVarHyps());
        }
        return varHyps;
    }

    /**
     * Given the label of a statement, returns that statement if it is in the
     * active scope, otherwise returns null.
     *
     * @param label the identifying label of a statement
     * @return an active statement or null
     */
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

    //    private Set<DisjPair> generateVarProduct(Set<String> vars1, Set<String> vars2) {
    //        Set<DisjPair> product = new HashSet<>();
    //        for (String var1 : vars1) {
    //            for (String var2 : vars2) {
    //                product.add(new DisjPair(var1, var2));
    //            }
    //        }
    //        return product;
    //    }

}
