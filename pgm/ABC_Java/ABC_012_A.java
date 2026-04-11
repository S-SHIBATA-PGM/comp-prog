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
        final String space = " ";
        final int zero = 0;
        final int one = 1;
        int A = Integer.parseInt (arr[zero]);
        int B = Integer.parseInt (arr[one]);
        System.out.println (
            String.join (space, String.valueOf (B), String.valueOf (A)));
        System.exit (0);
    }
}