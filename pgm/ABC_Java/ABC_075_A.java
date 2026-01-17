import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int one = 1;
        final int zero = 0;
        Map<Integer, Integer> m = new HashMap<>();
        for (int i = zero; i < arr.length; i++) {
            final int ABC = Integer.parseInt (arr[i]);
            if (m.containsKey (ABC)) {
                m.put (ABC, m.get (ABC) + one);
            } else {
                m.put (ABC, one);
            }
        }
        System.out.println (m.entrySet()
                                .stream()
                                .filter (e -> e.getValue() == one)
                                .map (Map.Entry::getKey)
                                .toList()
                                .get (zero));
        System.exit (0);
    }
}