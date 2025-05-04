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
        final int N = Integer.parseInt (arr[0]);
        final int X = Integer.parseInt (arr[1]);
        final int[] P = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final int[] idx =
            IntStream.range (0, N).filter (i -> P[i] == X).toArray();
        System.out.println (idx[0] + 1);
        return;
    }
}