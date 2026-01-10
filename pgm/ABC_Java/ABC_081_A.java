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
        final String[] s = reader.readLine().split ("");
        final String one = "1";
        final int zero = 0;
        int cnt = zero;
        for (int i = zero; i < s.length; i++) {
            if (one.equals (s[i])) {
                cnt++;
            }
        }
        System.out.println (cnt);
        System.exit (0);
    }
}