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
        final int N = Integer.parseInt (reader.readLine());
        final int K = Integer.parseInt (reader.readLine());
        final int X = Integer.parseInt (reader.readLine());
        final int Y = Integer.parseInt (reader.readLine());
        System.out.println (N <= K ? X * N : X * K + Y * (N - K));
        System.exit (0);
    }
}