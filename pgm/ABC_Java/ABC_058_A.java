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
        final String YES = "YES";
        final String NO = "NO";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int a = Integer.parseInt (arr[zero]);
        final int b = Integer.parseInt (arr[one]);
        final int c = Integer.parseInt (arr[two]);
        System.out.println (b - a == c - b ? YES : NO);
        System.exit (0);
    }
}