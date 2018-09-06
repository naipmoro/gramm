package naipmoro.gramm;

/**
 * Interface for indexable collections.
 *
 * @param <T> the type of the collection
 */
public interface Indexable<T> {

    /**
     * Returns the nth item in the collection.
     *
     * @param n the position of the item being returned
     * @return the nth item in the collection
     */
    T getIndex(int n);
}
