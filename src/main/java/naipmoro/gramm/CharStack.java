package naipmoro.gramm;

/**
 * A stack of {@code Charcter} objects used in compressed-proof verification.
 */
public class CharStack extends MMStack<Character> {

    /**
     * The capacity of the {@code CharStack}.
     */
    int CHARSTACK_CAPACITY = 5;

    /**
     * Initializes an empty stack with capacity {@code CHARSTACK_CAPACITY}.
     */
    CharStack() {
        stack = new Character[CHARSTACK_CAPACITY];
    }

    /**
     * Empties the stack.
     */
    public void clear() {
        ptr = -1;
    }
}
