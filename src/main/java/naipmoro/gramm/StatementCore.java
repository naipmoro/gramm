package naipmoro.gramm;

import java.util.List;

public class StatementCore {
    private final String type;
    private final String body[];

    public StatementCore(String type, String[] body) {
        this.type = type;
        this.body = body;
    }

    public StatementCore(String type, List<String> body) {
        this.type = type;
        String[] arr = new String[body.size()];
        arr = body.toArray(arr);
        this.body = arr;
    }

    public String getType() {
        return this.type;
    }

    public String[] getBody() {
        return this.body;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String s : this.body) {
            sb.append(" " + s);
        }
        return "<" + this.type + "," + sb.toString() + ">";
    }

}
