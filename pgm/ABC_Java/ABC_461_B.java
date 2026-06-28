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
        final int N = Integer.parseInt (reader.readLine());
        final int[] A = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final int[] B = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int zero = 0;
        boolean flg = true;
        for (int i = zero; i < N; i++) {
            if (B[A[i] - one] != i + one) {
                flg = false;
                break;
            }
        }
        System.out.println (flg ? Yes : No);
        System.exit (0);
    }
}