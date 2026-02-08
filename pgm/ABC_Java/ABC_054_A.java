import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final String Alice = "Alice";
        final String Bob = "Bob";
        final String Draw = "Draw";
        final int one = 1;
        final int fourteen = 14;
        final int zero = 0;
        int A = Integer.parseInt (arr[zero]);
        int B = Integer.parseInt (arr[one]);
        A = A == one ? fourteen : A;
        B = B == one ? fourteen : B;
        System.out.println (A > B ? Alice : A < B ? Bob : Draw);
        System.exit (0);
    }
}