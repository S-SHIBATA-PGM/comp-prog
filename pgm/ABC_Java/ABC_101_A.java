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
        final String plus = "+";
        final int zero = 0;
        int cnt = zero;
        for (int i = zero; i < S.length; i++) {
            if (plus.equals (S[i]))
                cnt++;
            else
                cnt--;
        }
        System.out.println (cnt);
        return;
    }
}