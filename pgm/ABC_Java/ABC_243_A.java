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
        final String T = "T";
        final String F = "F";
        final String M = "M";
        int V = arr[0];
        final int A = arr[1];
        final int B = arr[2];
        final int C = arr[3];
        String turn = T;
        while (V >= 0) {
            if (T.equals (turn)) {
                V -= A;
                turn = F;
            } else if (F.equals (turn)) {
                V -= B;
                turn = M;
            } else {
                V -= C;
                turn = T;
            }
        }
        System.out.println (turn);
        return;
    }
}