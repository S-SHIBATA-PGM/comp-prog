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
        final String S = reader.readLine();
        final String T = reader.readLine();
        reader.close();
        final int zero = 0;
        int cnt = zero;
        final int len = S.length();
        for (int i = zero; i < len; i++) {
            if (S.charAt (i) != T.charAt (i)) {
                cnt++;
            }
        }
        System.out.println (cnt);
        System.exit (0);
    }
}