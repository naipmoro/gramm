package naipmoro.gramm;

public class CharStack extends MMStack<Character> {

    /**
     * The capacity of the {@code CharStack}.
     */
    int CHARSTACK_CAPACITY = 5;

    /**
     * Initializes an empty stack of capacity {@code CHARSTACK_CAPACITY}.
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
