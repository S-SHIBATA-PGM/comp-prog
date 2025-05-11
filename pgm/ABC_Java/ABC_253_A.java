import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final List<Integer> abc = Arrays.stream (reader.readLine().split (" "))
                                      .map (Integer::valueOf)
                                      .collect (Collectors.toList());
        final String Yes = "Yes";
        final String No = "No";
        final int b = abc.get (1);
        Collections.sort (abc);
        System.out.println (b == abc.get (1) ? Yes : No);
        return;
    }
}