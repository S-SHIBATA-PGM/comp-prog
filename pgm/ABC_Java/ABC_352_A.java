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
        final int X, Y, Z;
        X = Integer.parseInt (arr[1]);
        Y = Integer.parseInt (arr[2]);
        Z = Integer.parseInt (arr[3]);
        System.out.println (Math.min (X, Y) <= Z && Z <= Math.max (X, Y) ? Yes
                                                                         : No);
        return;
    }
}