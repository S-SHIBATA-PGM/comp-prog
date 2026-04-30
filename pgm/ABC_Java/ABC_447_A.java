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
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        int N = Integer.parseInt (arr[zero]);
        int M = Integer.parseInt (arr[one]);
        System.out.println (M <= (N + one) / two ? Yes : No);
        System.exit (0);
    }
}