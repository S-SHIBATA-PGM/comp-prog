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
        final int K = Integer.parseInt (arr[1]);
        final List<Integer> A = Arrays.stream (reader.readLine().split (" "))
                                    .mapToInt (Integer::parseInt)
                                    .boxed()
                                    .collect (Collectors.toList());
        final int zero = 0;
        for (int i = N - 1; i > N - K - 1; i--) {
            A.add (zero);
            A.remove (0);
        }
        System.out.println (
            String.join (" ", A.stream().map (String::valueOf).toList()));
        return;
    }
}