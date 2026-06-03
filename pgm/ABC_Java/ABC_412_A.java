import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        final int zero = 0;
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        int cnt = zero;
        for (int i = 0; i < N; i++) {
            final StringTokenizer st = new StringTokenizer (reader.readLine());
            final int a = Integer.parseInt (st.nextToken());
            final int b = Integer.parseInt (st.nextToken());
            if (b > a) {
                cnt++;
            }
        }
        reader.close();
        System.out.println (cnt);
        System.exit (0);
    }
}