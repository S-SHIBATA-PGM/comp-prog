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
        final String Better = "Better";
        final String Worse = "Worse";
        final int one = 1;
        final int zero = 0;
        final int x = Integer.parseInt (arr[zero]);
        final int y = Integer.parseInt (arr[one]);
        System.out.println (x < y ? Better : Worse);
        System.exit (0);
    }
}