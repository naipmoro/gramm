package naipmoro.gramm;

/**
 * An exception that halts a proof verification, but does not typically
 * terminate the application.
 */
class MMProofException extends MMException {

    /**
     * Constructor.
     *
     * @param msg exception message
     */
    MMProofException(String msg) {
        super(msg);
    }
}
