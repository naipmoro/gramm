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
    public ProofStack(int n) {
        stack = new StatementCore[n];
    }

    /**
     * Returns the (n+1)th {@code StatementCore} in the stack, counting <emph>
     * from the bottom</emph> of the stack.
     *
     * @param n index of the object being returned
     * @return the {@code StatementCore} at the given index of the stack
     */
    public StatementCore getIndex(int n) {
        return stack[n];
    }
}

