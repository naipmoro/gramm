package naipmoro.gramm;

import java.util.Arrays;

public class CharStack extends MMStack<Character> {
    //private Character[] characters;
    //private int ptr = -1;
    //private int stackSize;

    CharStack(int n) {
        stack = new Character[n];
        //stackSize = n;
    }

//    public void push(Character c) {
////        if (ptr + 1 == stackSize) {
////            stackSize = 2 * stackSize;
////            characters = Arrays.copyOf(characters, stackSize);
////        }
//        characters[++ptr] = c;
//    }
//
//    public Character pop() {
//        return characters[ptr--];
//    }
//
//    public void remove() {
//        ptr--;
//    }
//
//    public Character peek() {
//        return characters[ptr];
//    }
//
//    public Character peekLast() {
//        return characters[0];
//    }
//
//    public int size() {
//        return (ptr + 1);
//    }

    public void clear() {
        ptr = -1;
    }
}
