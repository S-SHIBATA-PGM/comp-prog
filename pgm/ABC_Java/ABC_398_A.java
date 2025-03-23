import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;
import java.util.Collections;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String hyphen = "-";
        final String equal = "=";
        System.out.println (
            String
                .join ("", Collections.nCopies ((N - (2 - N % 2)) / 2, hyphen))
                .concat (
                    String.join ("", Collections.nCopies (2 - N % 2, equal)))
                .concat (String.join (
                    "", Collections.nCopies ((N - (2 - N % 2)) / 2, hyphen))));
        return;
    }
}