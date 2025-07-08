import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int[] abc = Arrays.stream (reader.readLine().split (" "))
                              .mapToInt (Integer::parseInt)
                              .toArray();
        final int no = 0;
        final int one = 1;
        final int two = 2;
        final int three = 3;
        boolean breakFlg = false;
        for (int i = 0; i < abc.length; i++) {
            if (breakFlg)
                break;
            if (abc[(i + one) % three] == abc[(i + two) % three]) {
                breakFlg = true;
                System.out.println (abc[i]);
            }
        }
        if (!breakFlg)
            System.out.println (no);
        return;
    }
}