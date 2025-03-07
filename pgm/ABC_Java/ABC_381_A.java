import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        Integer.parseInt (reader.readLine());
        String S = reader.readLine();
        final String YES = "Yes";
        final String NO = "No";
        final String ONE = "1";
        final String TWO = "2";
        final String SLASH = "/";
        if (S.length() % 2 == 0) {
            System.out.println (NO);
            return;
        }
        int pos = ((S.length() + 1) / 2) - 1;
        for (int i = 1; i <= pos; i++) {
            if (!ONE.equals (S.substring (i - 1, i))) {
                System.out.println (NO);
                return;
            }
        }
        if (!SLASH.equals (S.substring (pos, pos + 1))) {
            System.out.println (NO);
            return;
        }
        for (int i = pos + 1; i < S.length(); i++) {
            if (!TWO.equals (S.substring (i, i + 1))) {
                System.out.println (NO);
                return;
            }
        }
        System.out.println (YES);
        return;
    }
}