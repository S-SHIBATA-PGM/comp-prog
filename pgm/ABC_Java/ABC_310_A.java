import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;
import java.util.Arrays;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int P = Integer.parseInt (arr[1]);
        final int Q = Integer.parseInt (arr[2]);
        final int price = Q + Arrays.stream (reader.readLine().split (" "))
                                  .mapToInt (Integer::parseInt)
                                  .min()
                                  .orElse (0);
        System.out.println (P < price ? P : price);
        return;
    }
}