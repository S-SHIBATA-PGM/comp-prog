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
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int a = Integer.parseInt (arr[zero]);
        final int b = Integer.parseInt (arr[one]);
        final int c = Integer.parseInt (arr[two]);
        final Set<Integer> set = Set.copyOf (List.of (a, b, c));
        System.out.println (set.size() <= two ? Yes : No);
        System.exit (0);
    }
}