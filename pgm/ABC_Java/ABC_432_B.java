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
        char[] X = reader.readLine().toCharArray();
        final char cZero = '0';
        final int one = 1;
        final int zero = 0;
        Arrays.sort (X);
        if (X[zero] == cZero) {
            for (int i = one; i < X.length; i++) {
                if (X[i] != cZero) {
                    char keep = X[zero];
                    X[zero] = X[i];
                    X[i] = keep;
                    break;
                }
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (new String (X));
        out.flush();
        System.exit (0);
    }
}