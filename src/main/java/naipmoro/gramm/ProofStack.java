package naipmoro.gramm;

import java.util.Arrays;

public class ProofStack extends MMStack<StatementCore> {
    //private StatementCore[] stack;
    //private int ptr = -1;
    //private int stackSize;

    /**
     * Initializes an empty stack of size {@code n}.
     *
     * @param n size of the stack
     */
    ProofStack(int n) {
        stack = new StatementCore[n];
        //stackSize = n;
    }

//    /**
//     * Push a {@code StatementCore} onto the stack. If the underlying array is
//     * too small to hold the new item, the size of the array is doubled.
//     *
//     * @param sc the {@code StatementCore} being pushed to the stack
//     */
//    public void push(StatementCore sc) {
////        if (ptr + 1 == stackSize) {
////            stackSize = 2 * stackSize;
////            statCores = Arrays.copyOf(statCores, stackSize);
////        }
//        statCores[++ptr] = sc;
//    }
//
//    /**
//     * {@inheritDoc}
//     */
//    public StatementCore pop() {
//        return statCores[ptr--];
//    }
//
//    /**
//     * {@inheritDoc}
//     */
//    public void remove() {
//        ptr--;
//    }
//
//    /**
//     * {@inheritDoc}
//     */
//    public StatementCore peek() {
//        return statCores[ptr];
//    }
//
//    /**
//     * {@inheritDoc}
//     */
//    public StatementCore peekLast() {
//        return statCores[0];
//    }
//
//    /**
//     * {@inheritDoc}
//     */
//    public int size() {
//        return (ptr + 1);
//    }

    /**
     * {@inheritDoc}
     */
    public StatementCore getIndex(int n) {
        return stack[n];
    }
}

