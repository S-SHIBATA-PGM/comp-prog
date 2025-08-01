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
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int zero = 0;
        final int M = Integer.parseInt (arr[zero]);
        final int H = Integer.parseInt (arr[one]);
        System.out.println (H % M == zero ? Yes : No);
        return;
    }
}