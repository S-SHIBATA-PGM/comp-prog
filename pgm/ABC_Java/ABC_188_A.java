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
        final int one = 1;
        final int three = 3;
        final int zero = 0;
        final String Yes = "Yes";
        final String No = "No";
        final int X = Integer.parseInt (arr[zero]);
        final int Y = Integer.parseInt (arr[one]);
        System.out.println (Math.max (X, Y) < Math.min (X, Y) + three ? Yes
                                                                      : No);
        return;
    }
}