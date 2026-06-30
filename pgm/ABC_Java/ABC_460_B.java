import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String Yes = "Yes";
        final String No = "No";
        final int zero = 0;
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        for (int i = zero; i < N; i++) {
            StringTokenizer st = new StringTokenizer (reader.readLine());
            final long X1 = Long.parseLong (st.nextToken());
            final long Y1 = Long.parseLong (st.nextToken());
            final long R1 = Long.parseLong (st.nextToken());
            final long X2 = Long.parseLong (st.nextToken());
            final long Y2 = Long.parseLong (st.nextToken());
            final long R2 = Long.parseLong (st.nextToken());
            long dx = X1 - X2;
            long dy = Y1 - Y2;
            long dxy2 = dx * dx + dy * dy;
            long dr = R1 + R2;
            long dr2 = dr * dr;
            long df = R1 - R2;
            long df2 = df * df;
            if (df2 <= dxy2 && dxy2 <= dr2) {
                out.println (Yes);
            } else {
                out.println (No);
            }
        }
        reader.close();
        out.flush();
        System.exit (0);
    }
}