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
        final String S = reader.readLine();
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final String circle = "o";
        final String plus = "+";
        final int one = 1;
        final int two = 2;
        final int L = Integer.parseInt (arr[one]);
        final int R = Integer.parseInt (arr[two]);
        final String pattern = circle.concat (plus);
        System.out.println (S.substring (L - one, R).matches (pattern) ? Yes
                                                                       : No);
        System.exit (0);
    }
}