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
        final String Possible = "Possible";
        final String Impossible = "Impossible";
        final int one = 1;
        final int three = 3;
        final int zero = 0;
        final int A = Integer.parseInt (arr[zero]);
        final int B = Integer.parseInt (arr[one]);
        System.out.println (A % three == zero || B % three == zero ||
                                    (A + B) % three == zero
                                ? Possible
                                : Impossible);
        System.exit (0);
    }
}