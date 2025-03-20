import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int H = Integer.parseInt (reader.readLine());
        int ans = 1;
        int base = 2;
        int e = 1;
        int h = 0;
        while (h < H) {
            e *= base;
            h += e;
            ans++;
        }
        System.out.println (ans);
        return;
    }
    // static double log2 (double x) {
    //     if (Double.isNaN (x) || x < 0.0)
    //         return Double.NaN;
    //     if (x == Double.POSITIVE_INFINITY)
    //         return Double.POSITIVE_INFINITY;
    //     if (x == 0.0)
    //         return Double.NEGATIVE_INFINITY;
    //     int k = Math.getExponent (x);
    //     if (k < Double.MIN_EXPONENT) {
    //         k = Math.getExponent (x * 0x1.0p52) - 52;
    //     }
    //     if (k < 0) {
    //         k++;
    //     }
    //     double s = Math.scalb (x, -k);
    //     final double LOG2_E = 1.4426950408889634;
    //     return k + LOG2_E * Math.log (s);
    // }
}