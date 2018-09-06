package naipmoro.gramm;

/**
 * Basic stack interface.
 *
 * @param <T> stack item
 */
public interface MMStack<T> {

    /**
     * Pushes an item onto the stack.
     *
     * @param item item pushed to stack
     */
    void push(T item);

    /**
     * Pops the item from the stack and returns it.
     *
     * @return the item at the top of the stack
     */
    T pop();

    /**
     * Removes the item from the top of the stack.
     */
    void remove();

    /**
     * Returns the item at the top of the stack.
     *
     * @return the item at the top of the stack
     */
    T peek();

    /**
     * Returns the first item that was pushed to the stack.
     *
     * @return the first item that was pushed to the stack
     */
    T peekLast();

    /**
     * Returns the size of the stack.
     *
     * @return the size of the stack
     */
    int size();
}
