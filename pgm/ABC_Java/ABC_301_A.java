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
        final String[] S = reader.readLine().split ("");
        final String T = "T";
        final String A = "A";
        final int most = Math.max (
            (int)Arrays.stream (S).filter (s -> T.equals (s)).count(),
            (int)Arrays.stream (S).filter (s -> A.equals (s)).count());
        for (int i = 0, t = 0, a = 0; i < N; i++) {
            if (T.equals (S[i])) {
                t++;
            } else {
                a++;
            }
            if (t >= most) {
                System.out.println (T);
                break;
            } else if (a >= most) {
                System.out.println (A);
                break;
            }
        }
        return;
    }
}