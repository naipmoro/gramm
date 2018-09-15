package naipmoro.gramm;

/**
 * An generic Metamath stack class.
 *
 * @param <T> type of item on the stack
 */
public class MMStack<T> {

    /**
     * The stack is an array of items.
     */
    T[] stack;

    /**
     * Stack pointer, points to the top of the stack.
     */
    int ptr = -1;

    /**
     * Pushes an item onto the stack.
     *
     * @param item the item pushed to stack
     */
    void push(T item) {
        stack[++ptr] = item;
    }

    /**
     * Pops the item from the stack and returns it.
     *
     * @return the item at the top of the stack
     */
    T pop() {
        return stack[ptr--];
    }

    /**
     * Removes the item from the top of the stack.
     */
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
     * Returns the first item that was pushed to the stack.
     *
     * @return the first item that was pushed to the stack
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
