import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int ab[] = Arrays.stream (reader.readLine().split (" "))
                             .mapToInt (Integer::parseInt)
                             .toArray();
        final int cd[] = Arrays.stream (reader.readLine().split (" "))
                             .mapToInt (Integer::parseInt)
                             .toArray();
        final int one = 1;
        final int zero = 0;
        System.out.println (ab[zero] * cd[one] - ab[one] * cd[zero]);
        return;
    }
}