import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] NHX = reader.readLine().split (" ");
        final int H = Integer.parseInt (NHX[1]);
        final int X = Integer.parseInt (NHX[2]);
        final int[] P = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final int p = Arrays.stream (P).filter (x -> x + H >= X).toArray()[0];
        final int idx = Arrays.stream (P).boxed().toList().indexOf (p);
        System.out.println (idx + 1);
        return;
    }
}