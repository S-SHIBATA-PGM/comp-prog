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
        String[] S = new String[N];
        int[] A = new int[N];
        for (int i = 0; i < N; i++) {
            String[] arr = reader.readLine().split (" ");
            S[i] = arr[0];
            A[i] = Integer.parseInt (arr[1]);
        }
        int min = Arrays.stream (A).min().orElse (-1);
        int idx = IntStream.range (0, A.length)
                      .filter (i -> A[i] == min)
                      .findFirst()
                      .orElse (-1);
        for (int i = 0; i < A.length; i++) {
            System.out.println (S[(i + idx) % N]);
        }
        return;
    }
}