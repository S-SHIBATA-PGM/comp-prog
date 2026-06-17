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
        final String S = reader.readLine();
        reader.close();
        StringBuilder sb = new StringBuilder();
        final int len = S.length();
        final int zero = 0;
        for (int i = zero; i < len; i++) {
            char c = S.charAt (i);
            if (Character.isDigit (c)) {
                sb.append (c);
            }
        }
        System.out.println (sb.toString());
        System.exit (0);
    }
}