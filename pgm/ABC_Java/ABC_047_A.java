import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int[] abc = Arrays.stream (reader.readLine().split (" "))
                              .mapToInt (Integer::parseInt)
                              .toArray();
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        Arrays.sort (abc);
        System.out.println (abc[zero] + abc[one] == abc[two] ? Yes : No);
        System.exit (0);
    }
}