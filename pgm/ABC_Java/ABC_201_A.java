import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        // final String[] arr = reader.readLine().split (" ");
        final String Yes = "Yes";
        final String No = "No";
        final int[] A = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .sorted()
                            .toArray();
        System.out.println (A[1] - A[0] == A[2] - A[1] ? Yes : No);
        return;
    }
}