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
        final int A = Integer.parseInt (arr[0]);
        final int B = Integer.parseInt (arr[1]);
        final int C = Integer.parseInt (arr[2]);
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (
            Math.pow (A, 2) + Math.pow (B, 2) < Math.pow (C, 2) ? Yes : No);
        return;
    }
}