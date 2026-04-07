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
        String[] arr = reader.readLine().split (" ");
        reader.close();
        final String YES = "YES";
        final String NO = "NO";
        final int one = 1;
        final int zero = 0;
        final int M = Integer.parseInt (arr[zero]);
        final int D = Integer.parseInt (arr[one]);
        System.out.println (M % D == zero ? YES : NO);
        System.exit (0);
    }
}