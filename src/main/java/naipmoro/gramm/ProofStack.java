package naipmoro.gramm;

/**
 * A stack of {@code StatementCore} objects used in proof verification.
 */
class ProofStack extends MMStack<StatementCore> {

    /**
     * Initializes an empty {@code StatementCore} stack of size {@code n}.
     *
     * @param n the capacity of the stack
     */
    ProofStack(int n) {
        stack = new StatementCore[n];
    }

    /**
     * Returns the (n+1)th {@code StatementCore} in the stack, counting
     * <i>from the bottom</i> of the stack.
     *
     * @param n index of the object being returned
     * @return the {@code StatementCore} at the given index of the stack
     */
    StatementCore getIndex(int n) {
        return stack[n];
    }
}

