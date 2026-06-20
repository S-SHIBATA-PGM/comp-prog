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
        final int one = 1;
        final int zero = 0;
        final int N = Integer.parseInt (arr[zero]);
        int M = Integer.parseInt (arr[one]);
        int cnt = zero;
        while (M > zero) {
            cnt++;
            M = N % M;
        }
        System.out.println (cnt);
        System.exit (0);
    }
}