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
        final int[] T = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int zero = 0;
        final int S = Integer.parseInt (arr[one]);
        int pre = zero;
        String awake = Yes;
        final int len = T.length;
        for (int i = zero; i < len; i++) {
            if (S < T[i] - pre) {
                awake = No;
                break;
            }
            pre = T[i];
        }
        System.out.println (awake);
        System.exit (0);
    }
}