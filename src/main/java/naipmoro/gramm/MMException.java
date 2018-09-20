package naipmoro.gramm;

/**
 * An exception that is usually fatal, leading to the termination of the
 * application.
 */
public class MMException extends Exception {

    private static final long serialVersionUID = 1L;

    /**
     * Exception constructor.
     *
     * @param msg exception message
     */
    public MMException(String msg) {
        super(msg);
    }

}
