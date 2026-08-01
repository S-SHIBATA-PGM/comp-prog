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
        final String[] arr = reader.readLine().split (" ");
        reader.close();
        final String space = " ";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int N = Integer.parseInt (arr[zero]);
        int[][] a = new int[N][N];
        int r = zero;
        int c = (N - one) / two;
        int k = one;
        a[r][c] = k;
        for (int i = zero; i < Math.pow (N, two) - one; i++) {
            k++;
            if (a[(r - one + N) % N][(c + one) % N] == zero) {
                r = (r - one + N) % N;
                c = (c + one) % N;
                a[r][c] = k;
            } else {
                r = (r + one) % N;
                a[r][c] = k;
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        for (int y = zero; y < N; y++) {
            for (int x = zero; x < N; x++) {
                if (x > zero)
                    out.print (space);
                out.print (a[y][x]);
            }
            out.println();
        }
        out.flush();
        System.exit (0);
    }
}