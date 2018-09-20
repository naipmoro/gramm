package naipmoro.gramm;

/**
 * An exception that terminates the application. It is typically thrown in
 * response to syntactic errors or other serious errors from which recovery is
 * not an option.
 */
class MMException extends Exception {

    private static final long serialVersionUID = 1L;

    /**
     * Exception constructor.
     *
     * @param msg the exception message
     */
    MMException(String msg) {
        super(msg);
    }

}
