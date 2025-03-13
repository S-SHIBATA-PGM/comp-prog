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
        final String Invalid = "Invalid";
        final int L = Integer.parseInt (arr[0]);
        final int R = Integer.parseInt (arr[1]);
        if (1 == L && 0 == R) {
            System.out.println (Yes);
        } else if (0 == L && 1 == R) {
            System.out.println (No);
        } else {
            System.out.println (Invalid);
        }
        return;
    }
}