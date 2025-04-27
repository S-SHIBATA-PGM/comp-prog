import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int N, A, B;
        N = Integer.parseInt (arr[0]);
        A = Integer.parseInt (arr[1]);
        B = Integer.parseInt (arr[2]);
        final int[] C = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final int idx = IntStream.range (0, N)
                            .filter (i -> C[i] == A + B)
                            .findFirst()
                            .orElse (-1);
        System.out.println (idx + 1);
        return;
    }
}