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
        reader.readLine();
        final int[] A = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final int X = Integer.parseInt (reader.readLine());
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (Arrays.stream (A).anyMatch (a -> a == X) ? Yes
                                                                     : No);
        System.exit (0);
    }
}