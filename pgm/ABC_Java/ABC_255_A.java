import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int zero = 0;
        final int one = 1;
        final int two = 2;
        final int R = Integer.parseInt (arr[0]);
        final int C = Integer.parseInt (arr[1]);
        final int[][] A = new int[two][two];
        for (int i = 0; i < two; i++) {
            String[] row = reader.readLine().split (" ");
            A[i][zero] = Integer.parseInt (row[zero]);
            A[i][one] = Integer.parseInt (row[one]);
        }
        System.out.println (A[R - 1][C - 1]);
        return;
    }
}