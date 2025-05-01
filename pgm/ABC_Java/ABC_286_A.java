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
        final int P = Integer.parseInt (arr[1]);
        final int Q = Integer.parseInt (arr[2]);
        final int R = Integer.parseInt (arr[3]);
        final List<Integer> A = Arrays.stream (reader.readLine().split (" "))
                                    .map (Integer::valueOf)
                                    .collect (Collectors.toList());
        for (int i = P - 1, j = R - 1; i < Q; i++, j++) {
            Collections.swap (A, i, j);
        }
        System.out.println (
            String.join (" ", A.stream().map (String::valueOf).toList()));
        return;
    }
}