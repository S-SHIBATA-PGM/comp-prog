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
        final int N = Integer.parseInt (reader.readLine());
        final int one = 1;
        final int four = 4;
        final int six = 6;
        final int eight = 8;
        final int oneHundredTwentySix = 126;
        final int twoHundredTwelve = 212;
        TreeMap<Integer, Integer> m = new TreeMap<>();
        m.put (one, four);
        m.put (oneHundredTwentySix, six);
        m.put (twoHundredTwelve, eight);
        Map.Entry<Integer, Integer> entry = m.floorEntry (N);
        System.out.println (entry.getValue());
        System.exit (0);
    }
}