package naipmoro.gramm;

public class CharStack extends MMStack<Character> {

    /**
     * Initializes an empty stack of size {@code n}.
     *
     * @param n the capacity of the stack
     */
    CharStack(int n) {
        stack = new Character[n];
    }

    /**
     * Empties the stack.
     */
    public void clear() {
        ptr = -1;
    }
}
