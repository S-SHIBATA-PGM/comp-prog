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
        StringTokenizer st = new StringTokenizer (reader.readLine());
        st.nextToken();
        final int X = Integer.parseInt (st.nextToken());
        st = new StringTokenizer (reader.readLine());
        reader.close();
        final int zero = 0;
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        String space = " ";
        int t = zero;
        int pre = zero;
        while (st.hasMoreTokens()) {
            int cur = Integer.parseInt (st.nextToken());
            if (t == zero) {
                out.println (t + space + cur);
                pre = cur;
            } else {
                if (Math.abs (cur - pre) >= X) {
                    out.println (t + " " + cur);
                    pre = cur;
                }
            }
            t++;
        }
        out.flush();
        System.exit (0);
    }
}