import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] NK = reader.readLine().split (" ");
        final String[] A = reader.readLine().split (" ");
        final int N, K;
        N = Integer.parseInt (NK[0]);
        K = Integer.parseInt (NK[1]);
        String[] B = new String[N];
        for (int i = N - K, j = 0; i < N; i++, j++) {
            B[j] = A[i];
        }
        for (int i = 0, j = K; i < N - K; i++, j++) {
            B[j] = A[i];
        }
        System.out.println (String.join (" ", B));
        return;
    }
}