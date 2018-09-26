package naipmoro.gramm;

import java.text.CharacterIterator;
import java.text.StringCharacterIterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * A Metamath proof.
 */
public class Proof {

    /** The scope stack environment in which the proof takes place. */
    private final ScopeStack ss;

    /** The identifying label of the theorem being verified. */
    private final String label;

    /** The metamath constant representing the type of theorem. */
    private final String type;

    /**
     * The body of the theorem as a string array of metamath constants and
     * variables.
     */
    private final String[] stmt;

    /**
     * The proof of the theorem as a string array of i) labels, in the case of
     * a normal proof, or ii) labels in parentheses followed by uppercase
     * letters, in the case of a compressed proof.
     */
    private final String[] proof;

    /** The theorem's associated {@code Mandatory} object. */
    private final Mandatory mand;

    /**
     * Map used in translating from compressed-proof uppercase letters to
     * base 20 numbers.
     */
    static final Map<Character, Integer> base20;

    static {
        base20 = new HashMap<>();
        base20.put('A', 1);
        base20.put('B', 2);
        base20.put('C', 3);
        base20.put('D', 4);
        base20.put('E', 5);
        base20.put('F', 6);
        base20.put('G', 7);
        base20.put('H', 8);
        base20.put('I', 9);
        base20.put('J', 10);
        base20.put('K', 11);
        base20.put('L', 12);
        base20.put('M', 13);
        base20.put('N', 14);
        base20.put('O', 15);
        base20.put('P', 16);
        base20.put('Q', 17);
        base20.put('R', 18);
        base20.put('S', 19);
        base20.put('T', 20);
    }

    /**
     * Map used in translating from compressed-proof uppercase letters to
     * base 5 numbers.
     */
    static final Map<Character, Integer> base5;

    static {
        base5 = new HashMap<>();
        base5.put('U', 1);
        base5.put('V', 2);
        base5.put('W', 3);
        base5.put('X', 4);
        base5.put('Y', 5);
    }

    /**
     * Proof constructor.
     *
     * @param ss    the {@code ScopeStack} holding the metamath scopes and
     *              within which the proof takes place
     * @param label the identifying label of the assertion being proved
     * @param type  the type of the assertion
     * @param stmt  the string array of symbols constituting the assertion
     * @param proof the string array of labels constituting the proof
     * @param mand  an instance of {@code Mandatory} which conatins the
     *              mandatory hypotheses and disjoint variable pairs of the
     *              assertion
     */
    public Proof(
            ScopeStack ss, String label, String type, String[] stmt, String[] proof,
            Mandatory mand) {
        this.ss = ss;
        this.label = label;
        this.type = type;
        this.stmt = stmt;
        this.proof = proof;
        this.mand = mand;
    }

    /**
     * Determines whether the proof is compressed.
     *
     * @return true if the proof is compressed, otherwise false
     */
    private boolean isCompressedProof() {
        return this.proof[0].equals("(");
    }

    /**
     * Attempts to verify a proof. A compressed proof is passed to
     * {@link #verifyCompressed()} while a normal proof is passed to
     * {@link #verifyNormal()}.
     *
     * @return true if the proof is verified, otherwise false
     */
    public boolean verify() {
        if (isCompressedProof()) {
            return verifyCompressed();
        } else {
            return verifyNormal();
        }
    }

    /**
     * Verifies a normal proof.
     *
     * @return true if the proof is verified, otherwise false
     */
    boolean verifyNormal() {

        // the proof stack will hold the statements (more precisely,
        // the statement cores) referenced by the proof labels
        ProofStack proofStack = new ProofStack(proof.length);
        for (String lbl : this.proof) {
            if (lbl.equals("?")) {
                System.out.format("info: the proof of %s is incomplete%n", this.label);
                ss.incAttemptedProofs();
                return false;
            }
            Statement stat = ss.getActiveStmtByLabel(lbl);
            if (stat == null) {
                System.out.format(
                        "error: proof of %s failed; label %s does not refer to an assertion or an "
                        + "active hypothesis%n", this.label, lbl);
                ss.incErrors();
                ss.incAttemptedProofs();
                return false;
            }
            // process the statement
            try {
                processStatement(stat, proofStack);
            } catch (MMProofException mmpe) {
                String msg = mmpe.getMessage();
                System.out.println(msg);
                ss.incErrors();
                ss.incAttemptedProofs();
                return false;
            }
        }
        // we exit looping through the proof labels. There should be only one
        // statement left on the proof stack and it should match the assertion
        // being proved
        try {
            processProofEnd(proofStack);
        } catch (MMProofException mmpe) {
            String msg = mmpe.getMessage();
            System.out.println(msg);
            ss.incErrors();
            ss.incAttemptedProofs();
            return false;
        }
        ss.incAttemptedProofs();
        ss.incVerifiedProofs();
//        if (ss.getAttemptedProofs() % 2000 == 0) {
//            System.out.print("*");
//        }
        //System.out.format("verified: %d  %s%n", ss.getVerifiedProofs(), this.label); //TESTING
        return true;
    }

    /**
     * Verifies a compressed proof.
     *
     * @return true if the proof is verified, otherwise false
     */
    boolean verifyCompressed() {
        //ProofStack proofStack = new ProofStack(proof.length);
        List<StatementCore> tags = new ArrayList<>();
        List<Statement> reference = new ArrayList<Statement>(this.mand.getHyps());
        int alphaStart = -1;
        for (int i = 1; i < this.proof.length; ++i) {
            String lbl = this.proof[i];
            if (!lbl.equals(")")) {
                reference.add(ss.getActiveStmtByLabel(lbl));
            } else {
                alphaStart = i + 1;
                break;
            }
        }
        int totalChars = 0;
        for (int i = alphaStart; i < this.proof.length; ++i) {
            totalChars = totalChars + proof[i].length();
        }
        ProofStack proofStack = new ProofStack(totalChars);
        int refSize = reference.size();
        //Deque<Character> charStack = new ArrayDeque<>();
        CharStack charStack = new CharStack();
        for (int i = alphaStart; i < this.proof.length; ++i) {
            String alphas = this.proof[i];
            CharacterIterator charIter = new StringCharacterIterator(alphas);
            for (char c = charIter.first(); c != CharacterIterator.DONE; c = charIter.next()) {
                Integer refNum = base20.get(c);
                if (refNum != null) {
                    int num = charsToNum(charStack, refNum);
                    if (num > refSize) {
                        proofStack.push(tags.get(num - refSize - 1));
                        charStack.clear();
                        continue;
                    }
                    Statement stat = reference.get(num - 1);
                    if (stat == null) {
                        System.out.format(
                                "error: proof of %s failed; there is no statement corresponding to "
                                + "number%d%n", this.label, (num - 1));
                        ss.incErrors();
                        ss.incAttemptedProofs();
                        return false;
                    }
                    try {
                        processStatement(stat, proofStack);
                    } catch (MMProofException mmpe) {
                        String msg = mmpe.getMessage();
                        System.out.println(msg);
                        ss.incErrors();
                        ss.incAttemptedProofs();
                        return false;
                    }
                    charStack.clear();
                    continue;
                }
                refNum = base5.get(c);
                if (refNum != null) {
                    charStack.push(c);
                    continue;
                }
                if (c == 'Z') {
                    tags.add(proofStack.peek());
                    //charStack.clear();
                    continue;
                }
                System.out.format(
                        "error: proof of %s failed; %c is an unrecognized character "
                        + "in the compressed proof%n", this.label, c);
                ss.incErrors();
                ss.incAttemptedProofs();
                return false;
            }
        }
        try {
            processProofEnd(proofStack);
        } catch (MMProofException mmpe) {
            String msg = mmpe.getMessage();
            System.out.println(msg);
            ss.incErrors();
            ss.incAttemptedProofs();
            return false;
        }
        ss.incAttemptedProofs();
        ss.incVerifiedProofs();
//        if (ss.getAttemptedProofs() % 2000 == 0) {
//            System.out.print("*");
//        }
        //System.out.format("verified: %d  %s%n", ss.getVerifiedProofs(), this.label); //TESTING
        return true;
    }

    /**
     * Given a stack of characters from a compressed proof and a starting
     * value n, calculates a numerical value for the stack. If the stack is
     * empty, n is returned. Otherwise, let N_k ... N_0 be the numbers on the
     * stack, with N_0 at the top of the stack. Then the final value returned
     * is n + 20 * (N_0 * 5^0 + ... + N_k * 5^k).
     *
     * @param stack a possibly empty stack of characters
     * @param n     the starting integer value
     * @return the numerical value of the stack plus the starting integer
     */
    static int charsToNum(CharStack stack, int n) {
        int stackSize = stack.size();
        if (stackSize == 0) {
            return n;
        }
        int sum = 0;
        for (int i = 0; i < stackSize; ++i) {
            char stackChar = stack.pop();
            int stackNum = base5.get(stackChar);
            sum += stackNum * 20 * Math.pow(5, i);
        }
        return (sum + n);
    }

    /**
     * Given the proof's next statement and the current proof stack, advances
     * the proof by one step. Throws an exception if the proof fails.
     *
     * @param stat       a statement
     * @param proofStack the current proof stack
     * @throws MMProofException if the proof fails
     */
    private void processStatement(Statement stat, ProofStack proofStack)
            throws MMProofException {
        StatementCore statCore = stat.getStmtCore();
        // continue to push hypotheses (actually the statement cores of
        // hypotheses) to the stack...
        if (ss.isHypothesis(stat)) {
            proofStack.push(statCore);
            return;
        }
        // ...until we reach an assertion; we get the assertion's mandatory
        // hypotheses and disjoint variable pairs
        Mandatory assertMand = stat.getMandatory();
        Set<DisjPair> assertDisjPairs = assertMand.getDisj();
        List<Hypothesis> assertMandHyps = assertMand.getHyps();
        // compare the relative sizes of the proof stack and hypothesis list
        int stackSize = proofStack.size();
        int hypsSize = assertMandHyps.size();
        int offset = stackSize - hypsSize;
        if (offset < 0) {
            throw new MMProofException(String.format(
                    "error: proof of %s failed; stack size of %d is smaller "
                    + "than the number %d of hypotheses",
                    this.label, stackSize, hypsSize));
        }
        // if the assertion has no mandatory hypotheses (meaning it's
        // composed entirely of constants), then it's simply pushed as is
        // to the stack and we go on to the next label...
        if (hypsSize == 0) {
            proofStack.push(statCore);
            return;
        }
        // ...otherwise we process the list of hypotheses, associating
        // each hypothesis with it's corresponding stack statement;
        // each assertion has its own SM
        SubstitutionMap sm = new SubstitutionMap();
        // iterate through the hypotheses
        for (int i = 0; i < hypsSize; ++i) {
            StatementCore stCore = proofStack.getIndex(i + offset);
            Hypothesis hyp = assertMandHyps.get(i);
            String stType = stCore.getType();
            String hypType = hyp.getType();
            // we first check that the types of the hypothesis
            // and stack statement are equal...
            if (!stType.equals(hypType)) {
                throw new MMProofException(String.format(
                        "error: proof of %s failed; the stack type is %s "
                         + "while the hypothesis type is %s",
                        this.label, stType, hypType));
            }
            // ...then we begin populating a substitution map (SM);
            // only variable-type hypotheses are used for the SM
            String[] hypBody = hyp.getBody(); // the variable
            String[] stBody = stCore.getBody();
            if (ss.isVarTypeHyp(hyp)) {
                sm.addSubstitution(hypBody[0], stBody);
                continue;
            }
            // when we reach a logical hypothesis, we apply the SM to it,
            // check that the result matches the stack statement, and
            // (if it does) move on to the next hypothesis
            List<String> hypReplace = sm.applySubstitution(hypBody);
            List<String> stBodyList = Arrays.asList(stBody);
            if (!hypReplace.equals(stBodyList)) {
                throw new MMProofException(String.format(
                        "error: proof of %s failed; the result of substituting into "
                        + "hypothesis %s is %s, which doesn't match the stack statement %s",
                        this.label, hyp.getLabel(), hypReplace, Arrays.toString(stBody)));
            }
        }
        // we exit the hypotheses loop when stat is an assertion; at that
        // point we check whether stat's mandatory disj var pairs set is
        // empty; if empty, apply the SM to the assertion, pop off as
        // many statements from the stack as there were hypotheses,
        // and push the substituted assertion to the stack...
        if (assertDisjPairs.isEmpty()) {
            List<String> newStatBody = sm.applySubstitution(stat.getBody());
            for (int i = 0; i < hypsSize; ++i) {
                proofStack.pop();
            }
            proofStack.push(new StatementCore(stat.getType(), newStatBody));
        } else {
            // otherwise, we get the theorem's DisjPairs
            //Set<DisjPair> thmDisjPairs = this.mand.getDisj();
            // and iterate thru the assertion's DisjPairs
            for (DisjPair dpair : assertDisjPairs) {
                //DisjPair dpair = assertDisjPairIter.next();
                String leftVar = dpair.getLeft();
                String rightVar = dpair.getRight();
                String[] sub1 = sm.getSubst(leftVar);
                String[] sub2 = sm.getSubst(rightVar);
                if (sub1 == null || sub2 == null) {
                    continue;
                }
                Set<String> vars1 = new HashSet<>();
                Set<String> vars2 = new HashSet<>();
                Set<String> ssConstants = ss.getConstants();
                for (String elem1 : sub1) {
                    if (!ssConstants.contains(elem1)) {
                        vars1.add(elem1);
                    }
                }
                for (String elem2 : sub2) {
                    if (!ssConstants.contains(elem2)) {
                        vars2.add(elem2);
                    }
                }
                vars1.retainAll(vars2);
                if (!vars1.isEmpty()) {
                    throw new MMProofException(String.format(
                            "error: proof of %s failed due to a violation of the "
                            + "assertion's disjoint variable restriction: "
                            + "substitutions %s and %s (into variables %s and %s, "
                            + "respectively) have common variable(s) %s",
                            this.label, Arrays.toString(sub1), Arrays.toString(sub2),
                            leftVar, rightVar, vars1));
                }
                Set<DisjPair> thmDisjPairs = this.mand.getDisj();
                Set<DisjPair> disjProd = DisjPair.toDisjProduct(vars1, vars2);
                for (DisjPair disjpair : disjProd) {
                    if (!thmDisjPairs.contains(disjpair)) {
                        throw new MMProofException(String.format(
                                "error: proof of %s failed; the assertion is required to "
                                + "have, but lacks, the disjoint variable "
                                + "restriction %s", this.label, disjpair));
                    }
                }

            }
            List<String> newStatBody = sm.applySubstitution(stat.getBody());
            for (int i = 0; i < hypsSize; ++i) {
                proofStack.pop();
            }
            proofStack.push(new StatementCore(stat.getType(), newStatBody));
        }
    }

    /**
     * Completes the proof by checking the final state of the proof stack.
     * This method is called after all of the proof's statements have been
     * processed. An exception is thrown if the theorem is not proved.
     *
     * @param proofStack the current proof stack
     * @throws MMProofException if the theorem is not proved
     */
    private void processProofEnd(ProofStack proofStack) throws MMProofException {
        int stackSize = proofStack.size();
        if (stackSize != 1) {
            throw new MMProofException(String.format(
                    "error: proof of %s failed; at the end of the proof, only one statement "
                    + "must be left on the stack, but %d statements were left",
                    this.label, stackSize));

        }
        StatementCore proved = proofStack.pop();
        if (!proved.getType().equals(this.type)) {
            throw new MMProofException(String.format(
                    "error: proof of %s failed; the type of the proved statement: %s "
                    + "differs from the type of the assertion: %s",
                    this.label, proved.getType(), this.type));

        }
        String[] provedBody = proved.getBody();
        if (!Arrays.equals(provedBody, this.stmt)) {
            throw new MMProofException(String.format(
                    "error: proof of %s failed; the statement proved is %s "
                    + "but the assertion to be proved is %s",
                    this.label, Arrays.toString(provedBody), Arrays.toString(this.stmt)));

        }
    }

    /**
     * Given a proof in compressed form, returns the proof in normal form.
     * Compressed proofs are verified directly, so this method is never used.
     * But in principle we could decompress them with this method and apply
     * {@code verifyNormal()} to the results (see {@link #decompressTester}).
     *
     * @param compressedProof a string array containing the compressed proof
     * @return a string array containing the proof in normal format
     * @throws MMException if the compressed proof is invalidly structured
     */
    String[] decompress(String[] compressedProof) throws MMException {
        List<String> reference = new ArrayList<>();
        List<String[]> tagged = new ArrayList<>();
        List<String> normalProof = new ArrayList<>();
        for (Hypothesis hyp : this.mand.getHyps()) {
            reference.add(hyp.getLabel());
        }
        int alphaStart = -1;
        for (int i = 1; i < compressedProof.length; ++i) {
            String lbl = compressedProof[i];
            if (!lbl.equals(")")) {
                reference.add(lbl);
            } else {
                alphaStart = i + 1;
                break;
            }
        }
        int refSize = reference.size();
        CharStack charStack = new CharStack();
        for (int j = alphaStart; j < compressedProof.length; ++j) {
            String alphas = compressedProof[j];
            CharacterIterator charIter = new StringCharacterIterator(alphas);
            for (char c = charIter.first(); c != CharacterIterator.DONE; c = charIter.next()) {
                Integer refNum = base20.get(c);
                if (refNum != null) {
                    int num = charsToNum(charStack, refNum);
                    int offset = num - refSize;
                    if (num > refSize) {
                        String[] tags = tagged.get(offset - 1);
                        normalProof.addAll(Arrays.asList(tags));
                        charStack.clear();
                        continue;
                    }
                    String statLabel = reference.get(num - 1);
                    if (statLabel != null) {
                        normalProof.add(statLabel);
                        charStack.clear();
                        continue;
                    } else {
                        throw new MMException("decompression error");
                    }
                }
                refNum = base5.get(c);
                if (refNum != null) {
                    charStack.push(c);
                    continue;
                }
                if (c == 'Z') {
                    int normalProofSize = normalProof.size();
                    String stmtLabel = normalProof.get(normalProofSize - 1);
                    Statement lastStmt = ss.getActiveStmtByLabel(stmtLabel);
                    if (ss.isHypothesis(lastStmt)) {
                        tagged.add(new String[]{stmtLabel});
                        continue;
                    }
                    List<Hypothesis> stmtHyps = lastStmt.getMandatory().getHyps();
                    int hypsSize = stmtHyps.size();
                    int endIndx = normalProofSize - hypsSize - 1;
                    for (int i = normalProofSize - 2; i >= endIndx; --i) {
                        String statLbl = normalProof.get(i);
                        Statement stat = ss.getActiveStmtByLabel(statLbl);
                        if (!ss.isHypothesis(stat)) {
                            int moreHyps = stat.getMandatory().getHyps().size();
                            endIndx = endIndx - moreHyps;
                        }
                    }
                    List<String> sublist = normalProof.subList(endIndx, normalProofSize);
                    String[] tagList = sublist.toArray(new String[0]);
                    tagged.add(tagList);
                    continue;
                }
                throw new MMException("tag error");
            }
        }
        return normalProof.toArray(new String[0]);
    }

    /**
     * To test the decompress() method, rename verify() to verifyOLD() and this
     * method to verify().
     */
    boolean decompressTester() throws MMException {
        if (isCompressedProof()) {
            Proof newProof = new Proof(this.ss, this.label, this.type, this.stmt,
                    decompress(this.proof), this.mand);
            return newProof.verifyNormal();
        } else {
            return verifyNormal();
        }
    }

}
