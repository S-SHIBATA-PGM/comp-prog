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
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int nine = 9;
        final int sixteen = 16;
        final int zero = 0;
        final int X = Integer.parseInt (arr[zero]);
        final int Y = Integer.parseInt (arr[one]);
        System.out.println (nine * X == sixteen * Y ? Yes : No);
        System.exit (0);
    }
}