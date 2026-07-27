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
        final char cZero = '0';
        final int one = 1;
        final int ten = 10;
        final int zero = 0;
        final int N = Integer.parseInt (arr[zero]);
        final int M = Integer.parseInt (arr[one]);
        final String S = reader.readLine();
        final String T = reader.readLine();
        int min = Integer.MAX_VALUE;
        for (int i = 0; i <= N - M; i++) {
            int cur = 0;
            for (int j = 0; j < M; j++) {
                int s = S.charAt (i + j) - cZero;
                int t = T.charAt (j) - cZero;
                int diff = (s - t + ten) % ten;
                cur += diff;
            }
            min = Math.min (min, cur);
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (min);
        out.flush();
        System.exit (0);
    }
}