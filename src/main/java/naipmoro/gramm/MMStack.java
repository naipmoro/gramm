package naipmoro.gramm;

/**
 * A generic array-based stack, intended to be extended by concrete stacks.
 *
 * @param <T> type of item on the stack
 */
class MMStack<T> {

    /** The stack is an array of items. */
    T[] stack;

    /** Stack pointer, points to the top of the stack. */
    int ptr = -1;

    /**
     * Adds an item to the stack.
     *
     * @param item the item added to stack
     */
    void push(T item) {
        stack[++ptr] = item;
    }

    /**
     * Removes the item from the top of the stack and returns it.
     *
     * @return the item at the top of the stack
     */
    T pop() {
        return stack[ptr--];
    }

    /** Removes the item from the top of the stack. */
    void remove() {
        ptr--;
    }

    /**
     * Returns the item at the top of the stack.
     *
     * @return the item at the top of the stack
     */
    T peek() {
        return stack[ptr];
    }

    /**
     * Returns the first item that was added to the stack.
     *
     * @return the first item that was added to the stack
     */
    T peekLast() {
        return stack[0];
    }

    /**
     * Returns the size of the stack.
     *
     * @return the size of the stack
     */
    int size() {
        return (ptr + 1);
    }
}
