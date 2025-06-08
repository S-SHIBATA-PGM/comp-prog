import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    private static int factorial (int n) {
        if (n > 0)
            return n * factorial (n - 1);
        else
            return 1;
    }
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] S = reader.readLine().split ("");
        final int n = S.length;
        final int one = 1;
        Map<String, Integer> m = new HashMap<>();
        for (int i = 0; i < n; i++) {
            m.put (S[i], m.getOrDefault (S[i], 0) + 1);
        }
        int divisor = one;
        for (int i : m.values()) {
            divisor *= factorial (i);
        }
        System.out.println (factorial (n) / divisor);
        return;
    }
}