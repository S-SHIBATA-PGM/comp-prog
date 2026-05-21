import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        reader.close();
        final String OK = "OK";
        final String too = "Too Many Requests";
        final int one = 1;
        final int zero = 0;
        final int N = Integer.parseInt (arr[zero]);
        final int M = Integer.parseInt (arr[one]);
        for (int i = zero; i < N; i++) {
            if (i < M) {
                System.out.println (OK);
            } else {
                System.out.println (too);
            }
        }
        System.exit (0);
    }
}