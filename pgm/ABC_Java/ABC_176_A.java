import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int N, X, T;
        N = Integer.parseInt (arr[0]);
        X = Integer.parseInt (arr[1]);
        T = Integer.parseInt (arr[2]);
        System.out.println (N % X > 0 ? (N / X + 1) * T : N / X * T);
        return;
    }
}