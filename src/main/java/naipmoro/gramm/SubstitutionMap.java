package naipmoro.gramm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SubstitutionMap {
    //public List<String> vars;
    //public List<String> replacements;
    private Map<String, String[]> substsByVar;
    //private List<DisjPair> thmDisjPairs;
    //private List<DisjPair> hypDisjPairs;


    public SubstitutionMap() {
        //this.vars = new ArrayList<String>();
        //this.replacements = new ArrayList<String>();
        this.substsByVar = new HashMap<String, String[]>();
    }

    //  public SubstitutionMap(final List<DisjPair> hypDisjPairs, final List<DisjPair> thmDisjPairs) {
    //      //this.vars = new ArrayList<String>();
    //      //this.replacements = new ArrayList<String>();
    //      this.substsByVar = new HashMap<String, String[]>();
    //      this.hypDisjPairs = hypDisjPairs;
    //      this.thmDisjPairs = thmDisjPairs;
    //  }

    //  public SubstitutionMap(List<String> vars, List<String> replacements) {
    //    this.vars = vars;
    //    this.replacements = replacements;
    //  }

    public SubstitutionMap addSubstitution(String var, String[] replacement) {
        //this.vars.add(var);
        //this.replacements.add(replacement);
        this.substsByVar.put(var, replacement);
        return this;
    }

    public String[] getSubst(String var) {
        return this.substsByVar.get(var);
    }

    //  public String[] getSubstEntry(int i) {
    //    String[] subEntry = new String[2];
    //    subEntry[0] = vars.get(i);
    //    subEntry[1] = replacements.get(i);
    //    return subEntry;
    //  }

    //  public String applySubst(String orig) {
    //    int arraySize = this.source.size();
    //    String[] src = new String[arraySize];
    //    String[] repl = new String[arraySize];
    //    src = this.source.toArray(src);
    //    repl = this.replacement.toArray(repl);
    //    return StringUtils.replaceEach(orig, src, repl);
    //  }

    public List<String> applySubstitution(String[] orig) {
        List<String> replacement = this.replaceList(orig);
        return replacement;
    }

    public List<String> replaceList(String[] list) {
        List<String> result = new ArrayList<String>();
        for (int i = 0; i < list.length; ++i) {
            String sym = list[i];
            String[] val = this.getSubst(sym);
            if (val == null) {
                result.add(sym);
            } else {
                result.addAll(Arrays.asList(val));
            }
        }
        return result;
    }

    public int size() {
        return this.substsByVar.size();
    }
}

