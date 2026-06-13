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
        final int N = Integer.parseInt (reader.readLine());
        final int[] A = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        reader.close();
        final int two = 2;
        final int zero = 0;
        int sum = zero;
        for (int i = zero; i < N; i += two) {
            sum += A[i];
        }
        System.out.println (sum);
        System.exit (0);
    }
}