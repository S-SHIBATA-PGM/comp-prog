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
        final int zero = 0;
        final String S = arr[0];
        final String T = arr[1];
        if (S.compareTo (T) < zero) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        return;
    }
}