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
        reader.close();
        final int one = 1;
        final int zero = 0;
        final int L = Integer.parseInt (arr[zero]);
        final int R = Integer.parseInt (arr[one]);
        System.out.println (R - L + one);
        System.exit (0);
    }
}