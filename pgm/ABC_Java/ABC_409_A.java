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
        reader.readLine();
        final String T = reader.readLine();
        final String A = reader.readLine();
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final char cCircle = 'o';
        final int zero = 0;
        boolean found = false;
        final int len = T.length();
        for (int i = zero; i < len; i++) {
            if (T.charAt (i) == cCircle && A.charAt (i) == cCircle) {
                found = true;
                break;
            }
        }
        System.out.println (found ? Yes : No);
        System.exit (0);
    }
}