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
        final int six = 6;
        final String Yes = "Yes";
        final String No = "No";
        final int A = Integer.parseInt (arr[0]);
        final int B = Integer.parseInt (arr[1]);
        if (A <= B && B <= six * A) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        return;
    }
}