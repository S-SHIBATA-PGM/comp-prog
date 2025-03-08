import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        char[] N = reader.readLine().toCharArray();
        final String YES = "Yes";
        final String NO = "No";
        final char[] key = {'1', '2', '3'};
        TreeMap<Character, Integer> cnt = new TreeMap<>();
        cnt.put (key[0], 0);
        cnt.put (key[1], 0);
        cnt.put (key[2], 0);
        for (char c : N) {
            if (cnt.containsKey (c)) {
                cnt.replace (c, cnt.get (c) + 1);
            }
        }
        for (char c : key) {
            if (!cnt.get (c).equals (Character.getNumericValue (c))) {
                System.out.println (NO);
                return;
            }
        }
        System.out.println (YES);
        return;
    }
}