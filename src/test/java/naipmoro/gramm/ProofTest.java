package naipmoro.gramm;

import org.junit.Test;

import static org.junit.Assert.*;

public class ProofTest {

    @Test
    public void charsToNum_ConvertDequeCharactersToInteger_Integer() {
        CharStack charStack = new CharStack();

        charStack.push('U');
        charStack.push('V');
        char waitingChar = 'S';
        int waitingNum = Proof.base20.get(waitingChar);
        int expected = 159;
        int actual = Proof.charsToNum(charStack, waitingNum);
        assertEquals(expected, actual);

        charStack.clear();
        charStack.push('W');
        waitingChar = 'B';
        waitingNum = Proof.base20.get(waitingChar);
        expected = 62;
        actual = Proof.charsToNum(charStack, waitingNum);
        assertEquals(expected, actual);

        charStack.clear();
        waitingChar = 'R';
        waitingNum = Proof.base20.get(waitingChar);
        expected = 18;
        actual = Proof.charsToNum(charStack, waitingNum);
        assertEquals(expected, actual);

        charStack.clear();
        charStack.push('Y');
        charStack.push('Y');
        waitingChar = 'T';
        waitingNum = Proof.base20.get(waitingChar);
        expected = 620;
        actual = Proof.charsToNum(charStack, waitingNum);
        assertEquals(expected, actual);

        charStack.clear();
        charStack.push('U');
        charStack.push('U');
        charStack.push('U');
        waitingChar = 'A';
        waitingNum = Proof.base20.get(waitingChar);
        expected = 621;
        actual = Proof.charsToNum(charStack, waitingNum);
        assertEquals(expected, actual);
    }
}
