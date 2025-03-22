import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final double N = Double.parseDouble (reader.readLine());
        final int high = 1;
        final int fever = 2;
        final int normal = 3;
        final double d_high = 38.0;
        final double d_normal = 37.5;
        if (Double.compare (N, d_high) >= 0) {
            System.out.println (high);
        } else if (Double.compare (N, d_normal) >= 0) {
            System.out.println (fever);
        } else {
            System.out.println (normal);
        }
        return;
    }
}