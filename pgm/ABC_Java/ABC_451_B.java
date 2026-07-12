import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        final int one = 1;
        final int zero = 0;
        final int N = Integer.parseInt (arr[zero]);
        final int M = Integer.parseInt (arr[one]);
        final int[] A = new int[M];
        final int[] B = new int[M];
        for (int i = zero; i < N; i++) {
            arr = reader.readLine().split (" ");
            A[Integer.parseInt (arr[zero]) - one]++;
            B[Integer.parseInt (arr[one]) - one]++;
        }
        reader.close();
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        for (int i = zero; i < M; i++) {
            out.println (B[i] - A[i]);
        }
        out.flush();
        System.exit (0);
    }
}