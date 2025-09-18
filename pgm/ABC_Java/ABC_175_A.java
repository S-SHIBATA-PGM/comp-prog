import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] S = reader.readLine().split ("");
        final String RAINY = "R";
        final int one = 1;
        final int zero = 0;
        int num, ans;
        num = zero;
        ans = zero;
        for (int i = zero; i < S.length; i++) {
            if (RAINY.equals (S[i])) {
                num += one;
            } else {
                ans = Math.max (ans, num);
                num = zero;
            }
        }
        System.out.println (Math.max (ans, num));
        return;
    }
}