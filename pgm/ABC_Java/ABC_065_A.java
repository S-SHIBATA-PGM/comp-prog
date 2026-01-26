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
        final String delicious = "delicious";
        final String safe = "safe";
        final String dangerous = "dangerous";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int X = Integer.parseInt (arr[zero]);
        final int A = Integer.parseInt (arr[one]);
        final int B = Integer.parseInt (arr[two]);
        if (B - A <= zero) {
            System.out.println (delicious);
        } else if (B - A <= X) {
            System.out.println (safe);
        } else {
            System.out.println (dangerous);
        }
        System.exit (0);
    }
}