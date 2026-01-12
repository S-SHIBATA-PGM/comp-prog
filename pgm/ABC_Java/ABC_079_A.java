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
        final int[] N = Arrays.stream (reader.readLine().split (""))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int three = 3;
        final int zero = 0;
        int pre = -one;
        int cnt = zero;
        for (int i = zero; i < N.length; i++) {
            if (cnt >= three) {
                break;
            }
            if (N[i] == pre) {
                cnt++;
            } else {
                cnt = one;
            }
            pre = N[i];
        }
        System.out.println (cnt >= three ? Yes : No);
        System.exit (0);
    }
}