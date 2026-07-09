import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int zero = 0;
        final int N = Integer.parseInt (arr[zero]);
        final int M = Integer.parseInt (arr[one]);
        final int[] F = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        reader.close();
        Set<Integer> set = new HashSet<>();
        for (int f : F) {
            set.add (f);
        }
        if (set.size() == N) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        if (set.size() == M) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        System.exit (0);
    }
}