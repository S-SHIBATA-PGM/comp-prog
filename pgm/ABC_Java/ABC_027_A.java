import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
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
        final int l1 = Integer.parseInt (arr[zero]);
        final int l2 = Integer.parseInt (arr[one]);
        final int l3 = Integer.parseInt (arr[two]);
        int l4 = l1;
        if (l1 == l3) {
            l4 = l2;
        } else if (l1 == l2) {
            l4 = l3;
        }
        System.out.println (l4);
        System.exit (0);
    }
}