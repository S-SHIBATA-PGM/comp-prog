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
        final int[] A = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        reader.close();
        final int one = 1;
        final int zero = 0;
        int X = Integer.parseInt (arr[one]);
        for (int i = zero; i < A.length; i++) {
            if (A[i] < X) {
                X = A[i];
                System.out.println (one);
            } else {
                System.out.println (zero);
            }
        }
        System.exit (0);
    }
}