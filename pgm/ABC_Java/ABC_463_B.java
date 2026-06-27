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
        final String line = reader.readLine();
        StringTokenizer st = new StringTokenizer (line);
        final String Yes = "Yes";
        final String No = "No";
        final char A = 'A';
        final char circle = 'o';
        final int zero = 0;
        final int N = Integer.parseInt (st.nextToken());
        final char X = st.nextToken().charAt (zero);
        final int target = X - A;
        boolean has = false;
        for (int i = zero; i < N; i++) {
            String S = reader.readLine();
            if (S.charAt (target) == circle) {
                has = true;
            }
        }
        reader.close();
        System.out.println (has ? Yes : No);
        System.exit (0);
    }
}