package naipmoro.gramm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * A substitution map used in Metamath proof verification.
 */
public class SubstitutionMap {

    /**
     * A hashmap to represent substitutions, where each variable maps to a
     * string array of Metamath symbols.
     */
    private Map<String, String[]> substsByVar;

    /**
     * A SubstitutionMap constructor.
     */
    public SubstitutionMap() {
        this.substsByVar = new HashMap<>();
    }

    /**
     * Adds a new substitution to the substitution map.
     *
     * @param var         a variable as the key
     * @param replacement a string array as the value
     */
    public void addSubstitution(String var, String[] replacement) {
        this.substsByVar.put(var, replacement);
    }

    /**
     * Given a variable, returns the substitution map's replacement value for
     * that variable, or returns null if the variable is not a key of the map.
     *
     * @param var a variable
     * @return the string array that is the map's value for the given variable,
     * or null if the variable is not a key.
     */
    public String[] getSubst(String var) {
        return this.substsByVar.get(var);
    }

    /**
     * Applies a substitution map to a string array representing a Metamath
     * statement. The substitutions are applied simultaneously to the elements
     * of the array. Elements that are not keys of the map remain unchanged.
     *
     * @param orig a string array representing a Metamath statement
     * @return the result of applying the substitution map to the array
     */
    public List<String> applySubstitution(String[] orig) {
        return this.replaceList(orig);
    }

    /**
     * Given a string array, treats every element as a key of the substitution
     * map and replaces it with the corresponding value, or leaves it unchanged
     * if it isn't a key.
     *
     * @param list a string array
     * @return the string array resulting from applying the substitution map to
     * each element of the original array
     */
    private List<String> replaceList(String[] list) {
        List<String> result = new ArrayList<>();
        for (String sym : list) {
            String[] val = this.getSubst(sym);
            if (val == null) {
                result.add(sym);
            } else {
                result.addAll(Arrays.asList(val));
            }
        }
        return result;
    }

    /**
     * Returns the size of the substitution map.
     *
     * @return the size of the substitution map
     */
    public int size() {
        return this.substsByVar.size();
    }
}

