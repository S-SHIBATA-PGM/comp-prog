import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String[] S = reader.readLine().split ("");
        final String[] T = reader.readLine().split ("");
        final String one = "1";
        final String l = "l";
        final String zero = "0";
        final String o = "o";
        final String Yes = "Yes";
        final String No = "No";
        final int cOne = one.codePointAt (0);
        final int cL = l.codePointAt (0);
        final int cZero = zero.codePointAt (0);
        final int cO = o.codePointAt (0);
        boolean match = IntStream.range (0, N).allMatch (
            i
            -> S[i].equals (T[i]) ||
                   (Math.min (S[i].codePointAt (0), T[i].codePointAt (0)) ==
                        cOne &&
                    Math.max (S[i].codePointAt (0), T[i].codePointAt (0)) ==
                        cL) ||
                   (Math.min (S[i].codePointAt (0), T[i].codePointAt (0)) ==
                        cZero &&
                    Math.max (S[i].codePointAt (0), T[i].codePointAt (0)) ==
                        cO));
        System.out.println (match ? Yes : No);
        return;
    }
}