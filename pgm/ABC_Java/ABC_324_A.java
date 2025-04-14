import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        reader.readLine();
        final Integer[] A = Arrays.stream (reader.readLine().split (" "))
                                .mapToInt (Integer::parseInt)
                                .mapToObj (Integer::valueOf)
                                .toArray (Integer[] ::new);
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (Arrays.stream (A).distinct().count() == 1 ? Yes
                                                                      : No);
        return;
    }
}