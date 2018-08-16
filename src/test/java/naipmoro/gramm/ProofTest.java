package naipmoro.gramm;

import java.util.ArrayDeque;
import java.util.Deque;

import org.junit.Test;

import static org.junit.Assert.*;

public class ProofTest {

    @Test
    public void charsToNum_ConvertDequeCharactersToInteger_Integer() {
        Deque<Character> deque = new ArrayDeque<>();

        deque.push('U');
        deque.push('V');
        char waitingChar = 'S';
        int waitingNum = Proof.base20.get(waitingChar);
        int expected = 159;
        int actual = Proof.charsToNum(deque, waitingNum);
        assertEquals(expected, actual);

        deque.clear();
        deque.push('W');
        waitingChar = 'B';
        waitingNum = Proof.base20.get(waitingChar);
        expected = 62;
        actual = Proof.charsToNum(deque, waitingNum);
        assertEquals(expected, actual);

        deque.clear();
        waitingChar = 'R';
        waitingNum = Proof.base20.get(waitingChar);
        expected = 18;
        actual = Proof.charsToNum(deque, waitingNum);
        assertEquals(expected, actual);

        deque.clear();
        deque.push('Y');
        deque.push('Y');
        waitingChar = 'T';
        waitingNum = Proof.base20.get(waitingChar);
        expected = 620;
        actual = Proof.charsToNum(deque, waitingNum);
        assertEquals(expected, actual);

        deque.clear();
        deque.push('U');
        deque.push('U');
        deque.push('U');
        waitingChar = 'A';
        waitingNum = Proof.base20.get(waitingChar);
        expected = 621;
        actual = Proof.charsToNum(deque, waitingNum);
        assertEquals(expected, actual);
    }
}
