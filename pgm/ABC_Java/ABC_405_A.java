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
        final int lower1 = 1600;
        final int lower2 = 1200;
        final int upper1 = 2999;
        final int upper2 = 2399;
        final int one = 1;
        final int zero = 0;
        final int R = Integer.parseInt (arr[zero]);
        final int X = Integer.parseInt (arr[one]);
        final int[] lower = {lower1, lower2};
        final int[] upper = {upper1, upper2};
        System.out.println (lower[X - 1] <= R && R <= upper[X - 1] ? Yes : No);
        System.exit (0);
    }
}