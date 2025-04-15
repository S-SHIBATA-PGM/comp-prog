import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int[] S = Arrays.stream (reader.readLine().split (""))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final String Yes = "Yes";
        final String No = "No";
        int sum = IntStream.range (0, S.length)
                      .filter (i -> i % 2 == 1)
                      .mapToObj (i -> S[i])
                      .mapToInt (Integer::intValue)
                      .sum();
        System.out.println (sum == 0 ? Yes : No);
        return;
    }
}