import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int N, D;
        N = Integer.parseInt (arr[0]);
        D = Integer.parseInt (arr[1]);
        final int[] T = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final int no = -1;
        final int click = IntStream.range (0, N - 1)
                              .filter (i -> T[i + 1] - T[i] <= D)
                              .findFirst()
                              .orElse (no);
        System.out.println (click < 0 ? click : T[click + 1]);
        return;
    }
}