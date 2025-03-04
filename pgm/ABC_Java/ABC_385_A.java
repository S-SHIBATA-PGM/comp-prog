import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        final String Yes = "Yes";
        final String No = "No";
        int A, B, C;
        A = Integer.parseInt (arr[0]);
        B = Integer.parseInt (arr[1]);
        C = Integer.parseInt (arr[2]);
        if (A == B && B == C) {
            System.out.println (Yes);
            return;
        } else if (A == B + C) {
            System.out.println (Yes);
            return;
        } else if (B == A + C) {
            System.out.println (Yes);
            return;
        } else if (C == B + A) {
            System.out.println (Yes);
            return;
        }
        System.out.println (No);
        return;
    }
}