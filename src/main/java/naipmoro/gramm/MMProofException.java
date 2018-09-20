package naipmoro.gramm;

/**
 * An exception thrown in response to a proof error that does not terminate the
 * application.
 */
class MMProofException extends MMException {

    /**
     * Exception constructor.
     *
     * @param msg the exception message
     */
    MMProofException(String msg) {
        super(msg);
    }
}
