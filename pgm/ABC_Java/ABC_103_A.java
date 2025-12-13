import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int[] A = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final int one = 1;
        final int zero = 0;
        Arrays.sort (A);
        System.out.println (A[A.length - one] - A[zero]);
        return;
    }
}