import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int X = Integer.parseInt (reader.readLine());
        final String YES = "YES";
        final String NO = "NO";
        final List<Integer> shichigosan = new ArrayList<>();
        Collections.addAll (shichigosan, 7, 5, 3);
        if (shichigosan.contains (X)) {
            System.out.println (YES);
        } else {
            System.out.println (NO);
        }
        return;
    }
}