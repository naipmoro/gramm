package naipmoro.gramm;

public interface Statement {

    String getLabel();

    String getKind();

    String getType();

    String[] getBody();

    Mandatory getMandatory();

    StatementCore getStmtCore();

}
