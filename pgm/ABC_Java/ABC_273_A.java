import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    private static int f (int k) {
        if (k == 0) {
            return 1;
        } else {
            return k * f (k - 1);
        }
    }

    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        System.out.println (f (N));
        return;
    }
}