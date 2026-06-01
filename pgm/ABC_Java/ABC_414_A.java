import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        final String space = " ";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (space);
        final int N = Integer.parseInt (arr[zero]);
        final int L = Integer.parseInt (arr[one]);
        final int R = Integer.parseInt (arr[two]);
        int cnt = zero;
        for (int i = zero; i < N; i++) {
            StringTokenizer st = new StringTokenizer (reader.readLine());
            int X = Integer.parseInt (st.nextToken());
            int Y = Integer.parseInt (st.nextToken());
            if (X <= L && R <= Y) {
                cnt++;
            }
        }
        reader.close();
        System.out.println (cnt);
        System.exit (0);
    }
}