package naipmoro.gramm;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.ParseCancellationException;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;

/**
 * A class to keep track of the Metamath source file and any subsequent
 * included files.
 */
class MMFile {

    /** The Metamath source file. */
    static File dbFile;

    /** The list of included files, including the source file. */
    private static List<File> includeFiles = new ArrayList<>();

    /** A stack to keep track of the current file. */
    private static Deque<File> includeStack = new ArrayDeque<>();

    static long startTime;

    /**
     * Sets the Metamath source file.
     *
     * @param file the Metamath source {@code File}
     */
    static void setDbFile(File file) {
        MMFile.dbFile = file;
    }

    /** Sets the source file's start time. */
    static void setStartTime(long st) {
        startTime = st;
    }

    /**
     * Adds a file to the list of included files.
     *
     * @param file the {@code File} added to the list of included files
     */
    static void addInclude(File file) {
        includeFiles.add(file);
    }

    /**
     * Pushes a file to the stack of included files, making it the current
     * Metamath file.
     *
     * @param file a {@code File} pushed to the included file stack
     */
    static void pushInclude(File file) {
        includeStack.push(file);
    }

    /** Removes the current Metamath file from the top of the stack. */
    static void removeInclude() {
        includeStack.remove();
    }

    /**
     * Returns the current Metamath filename
     *
     * @return the current Metamath filename
     */
    static String getCurrentFileName() {
        return includeStack.peek().getName();
    }

    /**
     * Determines whether a file is in the list of included files.
     *
     * @param file the {@code File} whose membership is being tested
     * @return true if the file is in the list of included files, false
     * otherwise
     */
    static boolean containsInclude(File file) {
        return includeFiles.contains(file);
    }

}
