package naipmoro.gramm;

import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;

class MMFile {
    private static File dbFile;
    private static List<File> includeFiles = new ArrayList<>();
    private static Deque<File> includeStack = new ArrayDeque<>();

    static void setDbFile(File file) {
        MMFile.dbFile = file;
    }

    static void addInclude(File file) {
        includeFiles.add(file);
    }
    static File getDbFile() {
        return MMFile.dbFile;
    }

    static void pushInclude(File file) {
        includeStack.push(file);
    }

    static void popInclude() {
        includeStack.pop();
    }

    static boolean containsInclude(File file) {
        return includeFiles.contains(file);
    }
}
