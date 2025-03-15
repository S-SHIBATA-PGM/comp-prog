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
        final int A, B, C;
        A = Integer.parseInt (arr[0]);
        B = Integer.parseInt (arr[1]);
        C = Integer.parseInt (arr[2]);
        System.out.println (C < B && C < A & A < B      ? Yes
                            : B < C && (A < B || C < A) ? Yes
                                                        : No);
        return;
    }
}