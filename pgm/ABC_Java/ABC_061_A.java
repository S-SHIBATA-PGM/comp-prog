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
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int A = Integer.parseInt (arr[zero]);
        final int B = Integer.parseInt (arr[one]);
        final int C = Integer.parseInt (arr[two]);
        System.out.println (A <= C && C <= B ? Yes : No);
        System.exit (0);
    }
}