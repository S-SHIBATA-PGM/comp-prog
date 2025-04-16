import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int[] N = Arrays.stream (reader.readLine().split (""))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final String Yes = "Yes";
        final String No = "No";
        int pre = 10;
        boolean flg = true;
        for (int i = 0; i < N.length; i++) {
            if (N[i] >= pre) {
                flg = false;
                break;
            }
            pre = N[i];
        }
        System.out.println (flg ? Yes : No);
        return;
    }
}