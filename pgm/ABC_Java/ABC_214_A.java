import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final Integer N = Integer.parseInt (reader.readLine());
        final int zero = 0;
        Map<Integer, Integer> m = new TreeMap<>();
        m.put (125, 4);
        m.put (211, 6);
        m.put (214, 8);
        for (Map.Entry<Integer, Integer> e : m.entrySet()) {
            if (e.getKey().compareTo (N) >= zero) {
                System.out.println (e.getValue());
                break;
            }
        }
        return;
    }
}