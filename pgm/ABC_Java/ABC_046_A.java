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
        final int two = 2;
        final int zero = 0;
        Set<Integer> set = new HashSet<>();
        set.add (Integer.parseInt (arr[zero]));
        set.add (Integer.parseInt (arr[one]));
        set.add (Integer.parseInt (arr[two]));
        System.out.println (set.size());
        System.exit (0);
    }
}