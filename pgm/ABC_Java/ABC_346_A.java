import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final int[] A;
        final int[] B = new int[N - 1];
        A = Arrays.stream (reader.readLine().split (" "))
                .mapToInt (Integer::parseInt)
                .toArray();
        for (int i = 0; i < N - 1; i++) {
            B[i] = A[i] * A[i + 1];
        }
        System.out.println (
            String.join (" ", Arrays.stream (B)
                                  .boxed()
                                  .map (String::valueOf)
                                  .collect (Collectors.toList())));
        return;
    }
}