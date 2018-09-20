package naipmoro.gramm;

/**
 * A stack of {@code Charcter} objects used in compressed-proof verification.
 */
public class CharStack extends MMStack<Character> {

    /**
     * The capacity of the {@code CharStack}. A capacity of 4 would allow
     * referencing collections of over 60,000 items, while a capacity of 5 can
     * reference over 300,000.
     */
    private final int CHARSTACK_CAPACITY = 5;

    /**
     * Initializes an empty {@code Character} stack of size
     * {@code CHARSTACK_CAPACITY}.
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
