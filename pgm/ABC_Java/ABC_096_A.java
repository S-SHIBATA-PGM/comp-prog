import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int one = 1;
        final int zero = 0;
        final int a = Integer.parseInt (arr[zero]);
        final int b = Integer.parseInt (arr[one]);
        System.out.println (a <= b ? a : a - 1);
        System.exit (0);
    }
}