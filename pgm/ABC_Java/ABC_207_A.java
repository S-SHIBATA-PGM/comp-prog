import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final Integer[] ABC = Arrays.stream (reader.readLine().split (" "))
                                  .mapToInt (Integer::parseInt)
                                  .boxed()
                                  .toArray (Integer[] ::new);
        Arrays.sort (ABC, Collections.reverseOrder());
        System.out.println (ABC[0] + ABC[1]);
        return;
    }
}