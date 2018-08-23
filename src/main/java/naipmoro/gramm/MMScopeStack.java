package naipmoro.gramm;

import java.util.Iterator;

/**
 * An interface intended to be implemented by {@link ScopeStack}, the main
 * scope environment. It is a minimal representation of a stack of scopes.
 *
 * @param <Scope> the elements are scopes
 */
public interface MMScopeStack<Scope> {

    /**
     * Adds a scope to the top of the stack.
     *
     * @param scope a scope
     */
    void push(Scope scope);

    /**
     * Removes the scope from the top of the scope stack.
     */
    void remove();

    /**
     * Returns the scope at the top of the scope stack.
     *
     * @return a scope
     */
    Scope peek();

    /**
     * Returns the first scope that was pushed to the scope stack. This is
     * considered the top-level scope.
     *
     * @return a scope
     */
    Scope peekLast();

    /**
     * Returns an iterator over the stack of scopes.
     *
     * @return an iterator
     */
    Iterator<Scope> iterator();
}
