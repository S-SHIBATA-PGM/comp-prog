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
        final int[] P = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final int mx = Arrays.stream (P).max().orElse (0);
        final long cnt = Arrays.stream (P).filter (p -> p == mx).count();
        System.out.println (
            (P[0] != mx || (P[0] == mx && cnt > 1)) ? mx - P[0] + 1 : 0);
        return;
    }
}