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
        final int a = Integer.parseInt (arr[0]);
        final int b = Integer.parseInt (arr[1]);
        final String Yes = "Yes";
        final String No = "No";
        if (a * 2 == b || a * 2 + 1 == b) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        return;
    }
}