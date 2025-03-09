import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        char[] S = reader.readLine().toCharArray();
        final String YES = "Yes";
        final String NO = "No";
        boolean A = false;
        boolean B = false;
        boolean C = false;
        for (int i = 0; i < S.length; i++) {
            if ('A' == S[i]) {
                A = true;
            } else if ('B' == S[i]) {
                B = true;
            } else if ('C' == S[i]) {
                C = true;
            }
        }
        System.out.println (A && B && C ? YES : NO);
        return;
    }
}