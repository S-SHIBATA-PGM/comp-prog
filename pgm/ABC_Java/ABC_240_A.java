import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int[] arr = Arrays.stream (reader.readLine().split (" "))
                              .mapToInt (Integer::parseInt)
                              .toArray();
        final String Yes = "Yes";
        final String No = "No";
        final int mod = 10;
        final int a = arr[0];
        final int b = arr[1];
        int prev = (a - 1) % mod;
        int next = (a + 1) % mod;
        if (prev == 0) {
            prev += mod;
        }
        if (next == 0) {
            next += mod;
        }
        if (b == prev || b == next) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        return;
    }
}