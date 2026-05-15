import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int[] ABC = Arrays.stream (reader.readLine().split (" "))
                        .mapToInt (Integer::parseInt)
                        .toArray();
        reader.close();
        System.out.println (Arrays.stream (ABC)
                                .boxed()
                                .sorted (Collections.reverseOrder())
                                .map (String::valueOf)
                                .collect (Collectors.joining()));
        System.exit (0);
    }
}