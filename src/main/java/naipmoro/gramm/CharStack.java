package naipmoro.gramm;

/**
 * A stack of characters used in compressed-proof verification.
 */
public class CharStack extends MMStack<Character> {

    /** The fixed capacity of the {@code CharStack}. */
    final int CHARSTACK_CAPACITY;

    /**
     * The assigned capacity of the {@code CharStack}. A capacity of 4 would
     * allow referencing proofs of over 60,000 characters, while a capacity of
     * 5 can reference over 300,000 characters.
     */
    private final int INITIAL_CAPACITY = 5;

    /**
     * Initializes an empty {@code Character} stack of size
     * {@code CHARSTACK_CAPACITY}.
     */
    CharStack() {
        CHARSTACK_CAPACITY = INITIAL_CAPACITY;
        stack = new Character[CHARSTACK_CAPACITY];
    }

    /** Empties the stack. */
    public void clear() {
        ptr = -1;
    }
}
