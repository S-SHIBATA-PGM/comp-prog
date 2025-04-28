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
        final String[] S = reader.readLine().split ("");
        final String GOOD = "o";
        final String FAILING = "x";
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (
            Arrays.stream (S).anyMatch (s -> GOOD.equals (s)) &&
                    Arrays.stream (S).noneMatch (s -> FAILING.equals (s))
                ? Yes
                : No);
        return;
    }
}