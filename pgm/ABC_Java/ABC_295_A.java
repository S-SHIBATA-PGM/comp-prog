import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        reader.readLine();
        final String[] W = Arrays.stream (reader.readLine().split (" "))
                               .toArray (String[] ::new);
        final String and = "and";
        final String not = "not";
        final String that = "that";
        final String the = "the";
        final String you = "you";
        final String Yes = "Yes";
        final String No = "No";
        String[] keyword = new String[] {and, not, that, the, you};
        System.out.println (Arrays.stream (W).anyMatch (
                                w -> Arrays.asList (keyword).contains (w))
                                ? Yes
                                : No);
        return;
    }
}