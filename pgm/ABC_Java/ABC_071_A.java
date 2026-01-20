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
        final String A = "A";
        final String B = "B";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int x = Integer.parseInt (arr[zero]);
        final int a = Integer.parseInt (arr[one]);
        final int b = Integer.parseInt (arr[two]);
        System.out.println (Math.abs (x - a) < Math.abs (x - b) ? A : B);
        System.exit (0);
    }
}