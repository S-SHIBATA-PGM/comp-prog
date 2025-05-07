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
        final int L1 = Integer.parseInt (arr[0]);
        final int R1 = Integer.parseInt (arr[1]);
        final int L2 = Integer.parseInt (arr[2]);
        final int R2 = Integer.parseInt (arr[3]);
        System.out.println (
            Math.max (Math.min (R1, R2) - Math.max (L1, L2), 0));
        return;
    }
}