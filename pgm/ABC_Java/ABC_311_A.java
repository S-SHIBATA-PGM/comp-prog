import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        String[] S = reader.readLine().split ("");
        final String A = "A";
        final String B = "B";
        int a = 0;
        int b = 0;
        int c = 0;
        for (int i = 0; i < N; i++) {
            if (A.equals (S[i])) {
                a++;
            } else if (B.equals (S[i])) {
                b++;
            } else {
                c++;
            }
            if (a > 0 && b > 0 && c > 0) {
                System.out.println (i + 1);
                break;
            }
        }
        return;
    }
}