import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        reader.readLine();
        final int[] A = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        System.out.println (
            String.join (" ", Arrays.stream (A)
                                  .boxed()
                                  .filter (a -> a % 2 == 0)
                                  .map (String::valueOf)
                                  .collect (Collectors.toList())));
        return;
    }
}