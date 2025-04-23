import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int[] S = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final String Yes = "Yes";
        final String No = "No";
        final int lower = 100;
        final int upper = 675;
        final int multiple = 25;
        int pre = -1;
        String ans = Yes;
        for (int i = 0; i < S.length; i++) {
            if (S[i] < pre) {
                ans = No;
                break;
            } else if (S[i] < lower || upper < S[i]) {
                ans = No;
                break;
            } else if (S[i] % multiple != 0) {
                ans = No;
                break;
            }
            pre = S[i];
        }
        System.out.println (ans);
        return;
    }
}