import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int X = Integer.parseInt (reader.readLine());
        final String expert = "expert";
        final int upper = 90;
        final int[] rank = {0, 40, 70, upper};
        int pre = 0;
        for (int i = rank.length - 1; i >= 0; i--) {
            if (X < upper) {
                if (X >= rank[i]) {
                    System.out.println (pre - X);
                    break;
                }
            } else {
                System.out.println (expert);
                break;
            }
            pre = rank[i];
        }
        return;
    }
}