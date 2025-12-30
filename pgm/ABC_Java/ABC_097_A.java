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
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int two = 2;
        final int three = 3;
        final int zero = 0;
        final int a = Integer.parseInt (arr[zero]);
        final int b = Integer.parseInt (arr[one]);
        final int c = Integer.parseInt (arr[two]);
        final int d = Integer.parseInt (arr[three]);
        System.out.println (Math.abs (a - c) <= d || (Math.abs (a - b) <= d &&
                                                      Math.abs (b - c) <= d)
                                ? Yes
                                : No);
        return;
    }
}