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
        final int two = 2;
        final int three = 3;
        final int zero = 0;
        final int S = Integer.parseInt (arr[zero]);
        final int A = Integer.parseInt (arr[one]);
        final int B = Integer.parseInt (arr[two]);
        final int X = Integer.parseInt (arr[three]);
        System.out.println (S * A * (X / (A + B)) +
                            S * Math.min (A, X % (A + B)));
        System.exit (0);
    }
}