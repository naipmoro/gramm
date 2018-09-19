package naipmoro.gramm;

/**
 * An exception that is usually fatal, leading to the termination of the
 * application.
 */
class MMException extends Exception {

    private static final long serialVersionUID = 1L;

    /**
     * Constructor.
     *
     * @param msg exception message
     */
    MMException(String msg) {
        super(msg);
    }

}
