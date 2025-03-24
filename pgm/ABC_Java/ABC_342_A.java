import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        final Integer only = 1;
        Map<String, Integer> m = new TreeMap<String, Integer>();
        for (int i = 0; i < S.length(); i++) {
            String s = S.substring (i, i + 1);
            Integer v = m.get (s);
            if (v == null) {
                m.put (s, 1);
            } else {
                m.put (s, v + 1);
            }
        }
        for (Map.Entry<String, Integer> e : m.entrySet()) {
            if (only.equals (e.getValue())) {
                String s = e.getKey();
                System.out.println (S.indexOf (s) + 1);
                break;
            }
        }
        return;
    }
}