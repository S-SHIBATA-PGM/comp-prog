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
        final String Takahashi = "Takahashi";
        final String Aoki = "Aoki";
        final int A = arr[0];
        final int B = arr[1];
        final int C = arr[2];
        final int D = arr[3];
        if (A < C) {
            System.out.println (Takahashi);
        } else if (A > C) {
            System.out.println (Aoki);
        } else if (B <= D) {
            System.out.println (Takahashi);
        } else {
            System.out.println (Aoki);
        }
        return;
    }
}