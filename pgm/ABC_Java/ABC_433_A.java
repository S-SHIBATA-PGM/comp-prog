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
        String[] arr = reader.readLine().split (" ");
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int X = Integer.parseInt (arr[zero]);
        final int Y = Integer.parseInt (arr[one]);
        final int Z = Integer.parseInt (arr[two]);
        System.out.println (
            (X - Y * Z) >= zero && (X - Y * Z) % (Z - one) == zero ? Yes : No);
        System.exit (0);
    }
}