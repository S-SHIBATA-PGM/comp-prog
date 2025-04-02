import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String L = "L";
        final String o = "o";
        final String n = "n";
        final String g = "g";
        System.out.println (
            L.concat (String.join ("", Collections.nCopies (N, o)))
                .concat (n)
                .concat (g));
        return;
    }
}