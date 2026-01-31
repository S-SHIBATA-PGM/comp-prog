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
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int two = 2;
        final int three = 3;
        final int four = 4;
        final int five = 5;
        final int six = 6;
        final int seven = 7;
        final int eight = 8;
        final int nine = 9;
        final int ten = 10;
        final int eleven = 11;
        final int twelve = 12;
        final int zero = 0;
        final Set<Integer> g1 =
            Collections.unmodifiableSet (new HashSet<Integer> (
                Arrays.asList (one, three, five, seven, eight, ten, twelve)));
        final Set<Integer> g2 = Collections.unmodifiableSet (
            new HashSet<Integer> (Arrays.asList (four, six, nine, eleven)));
        final Set<Integer> g3 = Collections.unmodifiableSet (
            new HashSet<Integer> (Arrays.asList (two)));
        final int x = Integer.parseInt (arr[zero]);
        final int y = Integer.parseInt (arr[one]);
        System.out.println ((g1.contains (x) && g1.contains (y)) ||
                                    (g2.contains (x) && g2.contains (y)) ||
                                    (g3.contains (x) && g3.contains (y))
                                ? Yes
                                : No);
        System.exit (0);
    }
}