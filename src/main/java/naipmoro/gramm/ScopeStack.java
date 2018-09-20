package naipmoro.gramm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/**
 * The global scope stack and scope manager.
 */
public class ScopeStack extends MMStack<Scope> implements Iterable<Scope> {

    private static final long serialVersionUID = 1L;

    /**
     * The global set of constants.
     */
    private Set<String> globalConstants = new HashSet<>();

    /**
     * The global set of all variables, both active and inactive.
     */
    private Set<String> globalVars = new HashSet<>();

    /**
     * The global set of statement id labels.
     */
    private Set<String> globalLabels = new HashSet<>();

    /**
     * An inner class of checking methods.
     */
    private ScopeStack.Check checker = new Check();

    /**
     * The current total number of hypotheses. Incremented and added to each
     * new hypothesis as a construction parameter. Used to sort hypotheses by
     * order of appearance.
     */
    private int hypCount = 0;

    /**
     * The current total number of errors.
     */
    private int errors = 0;

    /**
     * The current total number of warnings.
     */
    private int warnings = 0;

    /**
     * The current total number of attempted proofs.
     */
    private int attemptedProofs = 0;

    /**
     * The current total number of verified proofs.
     */
    private int verifiedProofs = 0;

    /**
     * The initial capacity of a {@code ScopeStack}.
     */
    private int STACK_CAPACITY = 10;

    /**
     * Initializes an empty {@code ScopeStack} with an initial size of
     * {@code STACK_CAPACITY}.
     */
    public ScopeStack() {
        stack = new Scope[STACK_CAPACITY];
    }

    /**
     * Adds a {@code Scope} to the stack, doubling the capacity of the stack if
     * it is too small to contain the new item.
     *
     * @param scope the {@code Scope} added to the stack
     */
    @Override
    public void push(Scope scope) {
        if (ptr == STACK_CAPACITY - 1) {
            stack = Arrays.copyOf(stack, STACK_CAPACITY * 2);
            STACK_CAPACITY = stack.length;
        }
        stack[++ptr] = scope;
    }

    /**
     * Returns a reverse iterator.
     * @return a reverse iterator
     */
    public Iterator<Scope> iterator() {
        return new ReverseIterator();
    }

    /**
     * An iterator that iterates in reverse order. For use on an array that is
     * intended to represent a stack. Does not implement the {@code remove()}
     * method.
     */
    class ReverseIterator implements Iterator<Scope> {
        int index;

        /**
         * Constructor.
         */
        ReverseIterator() {
            index = ptr;
        }

        /**
         * Checks if the scope array has a next item.
         *
         * @return true if the scope array has a next item, false otherwise
         */
        public boolean hasNext() {
            return index >= 0;
        }

        /**
         * Unimplemented method.
         */
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /**
         * Returns the next {@code Scope} in the stack.
         * @return the next {@code Scope} in the stack
         */
        public Scope next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            return stack[index--];
        }
    }

    /**
     * Returns the set of global constants.
     *
     * @return the set of global constants
     */
    public Set<String> getConstants() {
        return this.globalConstants;
    }

    /**
     * Returns the number of errors.
     *
     * @return the number of errors
     */
    private int getErrors() {
        return errors;
    }

    /**
     * Returns the number of warnings.
     *
     * @return the number of warnings
     */
    private int getWarnings() {
        return warnings;
    }

    /**
     * Returns the number of attempted proofs.
     *
     * @return the number of attempted proofs
     */
    int getAttemptedProofs() {
        return attemptedProofs;
    }

    /**
     * Returns the number of verified proofs.
     *
     * @return the number of verified proofs
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
    public String endMessage() {
        int errs = getErrors();
        int warns = getWarnings();
        int attempted = getAttemptedProofs();
        int verified = getVerifiedProofs();
        return String.format(
                "%d errors%n" + "%d warnings%n" + "%d of %d proofs were verified", errs, warns,
                verified, attempted);
    }

    /**
     * Returns the toplevel scope.
     *
     * @return a {@code Scope}
     */
    public Scope getToplevel() {
        return this.peekLast();
    }

    /**
     * Returns the label-to-statement hashmap at the toplevel scope.
     *
     * @return the toplevel scope's {@code Scope#stmtsByLabel} hashmap
     */
    public Map<String, Statement> getToplevelStmtsByLabel() {
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
    public void addConstants(String[] cns) throws MMException {
        for (String cn : cns) {
            checker.checkNewConstant(cn);
            globalConstants.add(cn);
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
    public void addVars(String[] vars) throws MMException {
        Scope scope = this.peek();
        for (String var : vars) {
            checker.checkNewVar(var);
            scope.addToVariables(var);
            this.globalVars.add(var);
        }
    }

    /**
     * Given the elements of a proposed variable-type hypothesis, checks that
     * the hypothesis is valid and then adds it to the active scope.
     *
     * @param label the identifying label of the variable-type hypothesis
     * @param type  a previously declared metamath constant
     * @param var   an active variable
     * @throws MMException if the hypothesis fails the validity check
     */
    public void addVarHyp(String label, String type, String var) throws MMException {
        checker.checkNewVarHyp(label, type, var);
        Hypothesis hyp = new Hypothesis(label, "$f", type, new String[]{var}, ++hypCount);
        Scope scope = this.peek();
        scope.addToStmtsByLabel(label, hyp);
        scope.addToVarHypsByVar(var, hyp);
        this.globalLabels.add(label);
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
    public void addLogHyp(String label, String type, String[] stmt) throws MMException {
        checker.checkLabelAndType(label, type);
        Scope scope = this.peek();
        for (String sym : stmt) {
            if (this.globalConstants.contains(sym)) {
                continue;
            }
            if (!checker.isActiveVar(sym)) {
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
        this.globalLabels.add(label);
    }

    /**
     * Given an array of variables, checks that the variables are unique,
     * creates all possible disjoint variable pairs from the array, and adds
     * each pair to the local scope's {@code DisjPair} list. The parser
     * guarantees that the array will contain at least two variables.
     *
     * @param vars a string array of variables
     * @throws MMException if the uniqueness check fails
     */
    public void addDisjVars(String[] vars) throws MMException {
        checker.checkDisjVars(vars);
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
    public void addTheorem(String label, String type, String[] stmt, String[] proofList)
            throws MMException {
        checker.checkLabelAndType(label, type);
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
    public void addAxiom(String label, String type, String[] stmt) throws MMException {
        checker.checkLabelAndType(label, type);
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
    public Mandatory getActiveMandatory(String[] stmt) throws MMException {
        Set<Hypothesis> logHypSet = getActiveMandLogHyps();
        Set<Hypothesis> varHypSet = getActiveMandVarHyps();
        for (String sym : stmt) {
            if (this.globalConstants.contains(sym)) {
                continue;
            }
            if (!checker.isActiveVar(sym)) {
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
    public void addAssertion(String label, String kind, String type, String[] stmt,
                              Mandatory mand) {
        Map<String, Statement> TopStmtsByLabel = getToplevelStmtsByLabel();
        TopStmtsByLabel.put(label, new Assertion(label, kind, type, stmt, mand));
        this.globalLabels.add(label);
    }

    /**
     * Checks if a hypothesis is a variable-type hypothesis.
     *
     * @param hyp a hypothesis
     * @return true if the kind of the hypothesis is "$f", false otherwise.
     */
    public boolean isVarTypeHyp(Hypothesis hyp) {
        return hyp.getKind().equals("$f");
    }

    /**
     * Checks if a statement is a hypothesis.
     *
     * @param stmt a statement
     * @return true if the kind of the statement is either "$f" or "$e", false
     * otherwise.
     */
    public boolean isHypothesis(Statement stmt) {
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
    public Hypothesis getActiveVarHypByVar(String var) {
        for (Scope scope : this) {
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
    public Set<DisjPair> getActiveDisjVarPairs() {
        Set<DisjPair> disjPairs = new HashSet<>();
        for (Scope scope : this) {
            disjPairs.addAll(scope.getDisjVarPairs());
        }
        return disjPairs;
    }

    /**
     * Returns the set of all mandatory logical hypotheses in the active scope.
     *
     * @return a set of hypotheses
     */
    public Set<Hypothesis> getActiveMandLogHyps() {
        Set<Hypothesis> logHyps = new HashSet<>();
        for (Scope scope : this) {
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
    public Set<Hypothesis> getActiveMandVarHyps() {
        Set<Hypothesis> varHyps = new HashSet<>();
        for (Scope scope : this) {
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
    public Statement getActiveStmtByLabel(String label) {
        for (Scope scope : this) {
            Statement stmt = scope.getStmtsByLabel().get(label);
            if (stmt != null) {
                return stmt;
            }
        }
        return null;
    }

    /**
     * Inner class that supplies the checking code.
     */
    class Check {

        /**
         * Checks if a variable is in the active scope.
         *
         * @param var a variable
         * @return true if var is in the active scope, false otherwise
         */
        boolean isActiveVar(String var) {
            for (Scope scope : ScopeStack.this) {
                if (scope.getVariables().contains(var)) {
                    return true;
                }
            }
            return false;
        }

        /**
         * Checks the validity of a new constant.
         *
         * @param cn a constant
         * @throws MMException if the constant is already declared as a
         *                     variable
         */
        void checkNewConstant(String cn) throws MMException {
            if (globalVars.contains(cn)) {
                throw new MMException("constant " + cn + " is already declared as a var");
            }
            if (globalLabels.contains(cn)) {
                System.out.format("warning: %s is already declared as a statement label%n", cn);
                incWarnings();
            }
            if (globalConstants.contains(cn)) {
                System.out.format("warning: %s is already declared as a constant%n", cn);
                incWarnings();
            }
        }

        /**
         * Checks the validity of a new variable.
         *
         * @param var a variable
         * @throws MMException if the variable is already declared as a
         *                     constant
         */
        void checkNewVar(String var) throws MMException {
            if (globalConstants.contains(var)) {
                throw new MMException("variable " + var + " is already declared as a constant");
            }
            if (globalLabels.contains(var)) {
                System.out.format("warning: %s is already declared as a statement label%n", var);
                incWarnings();
            }
            if (isActiveVar(var)) {
                System.out.format("warning: %s is already a variable in the active scope%n", var);
                incWarnings();
            }
        }

        /**
         * Checks the validity of a new statement label.
         *
         * @param label the identifying label of the statement
         * @throws MMException if the label is already in use
         */
        void checkNewLabel(String label) throws MMException {
            if (globalLabels.contains(label)) {
                throw new MMException("label " + label + " is defined more than once");
            }
            if (globalVars.contains(label)) {
                System.out.format("warning: %s is already declared as a variable%n", label);
                incWarnings();
            }
            if (globalConstants.contains(label)) {
                System.out.format("warning: %s is already declared as a constant%n", label);
                incWarnings();
            }
        }

        /**
         * Checks the validity of a label and type.
         *
         * @param label the identifying label of the statement
         * @param type  the type of the statement
         * @throws MMException if the label is already in use, or if the type
         *                     is either not declared or is already declared as
         *                     a variable
         */
        void checkLabelAndType(String label, String type) throws MMException {
            if (!globalConstants.contains(type)) {
                throw new MMException("constant " + type + " has not been declared");
            }
            checker.checkNewLabel(label);
        }

        /**
         * Checks the components of a variable-type hypothesis.
         *
         * @param label the identifying label of the hypothesis
         * @param type  the type of the hypothesis
         * @param var   the variable of the hypothesis
         * @throws MMException if the label is already in use, if the variable
         *                     is not declared, or if the type is either not
         *                     declared or is already declared as a variable
         */
        void checkNewVarHyp(String label, String type, String var) throws MMException {
            if (!isActiveVar(var)) {
                throw new MMException("variable " + var + " is not declared in the active scope");
            }
            this.checkLabelAndType(label, type);
            for (Scope scope : ScopeStack.this) {
                Hypothesis hyp = scope.getVarHypsByVar().get(var);
                if (hyp != null) {
                    String activeType = hyp.getType();
                    if (type.equals(activeType)) {
                        System.out.format(
                                "warning: duplicate active variable-type hypothesis $f %s %s $.%n",
                                var, type);
                        incWarnings();
                    } else {
                        throw new MMException("variable " + var + " is defined as the different "
                                              + "type " + activeType + " in the active scope");
                    }
                }
            }
        }

        /**
         * Checks that the variables in string array are unique.
         *
         * @param vars a string array of variables
         * @throws MMException if the variables are not unique
         */
        void checkDisjVars(String[] vars) throws MMException {
            Set<String> set = new HashSet<>();
            for (String var : vars) {
                if (!set.add(var)) {
                    throw new MMException(
                            "variable " + var + " is repeated in $d statement "
                            + Arrays.toString(vars) + "; all variables in a $d statement must be "
                            + "unique");
                }
            }
        }


    }
}
