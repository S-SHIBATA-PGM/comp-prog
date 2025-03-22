import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] NK = reader.readLine().split (" ");
        final int K = Integer.parseInt (NK[1]);
        final int[] A = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        System.out.println (
            String.join (" ", Arrays.stream (A)
                                  .boxed()
                                  .filter (a -> a % K == 0)
                                  .map (a -> a = a / K)
                                  .map (String::valueOf)
                                  .collect (Collectors.toList())));
        return;
    }
}