package naipmoro.gramm;

/**
 * An exception thrown in response to a proof error that does not terminate the
 * application.
 */
public class MMProofException extends MMException {

    /**
     * Exception constructor.
     *
     * @param msg exception message
     */
    public MMProofException(String msg) {
        super(msg);
    }
}
