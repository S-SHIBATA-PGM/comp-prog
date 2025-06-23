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
        final int N = Integer.parseInt (arr[0]);
        final int A = Integer.parseInt (arr[1]);
        final int X = Integer.parseInt (arr[2]);
        final int Y = Integer.parseInt (arr[3]);
        System.out.println (X * Math.min (N, A) + Y * Math.max (0, N - A));
        return;
    }
}