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
        final String aspectRatio43 = "4:3";
        final String aspectRatio169 = "16:9";
        final int one = 1;
        final int three = 3;
        final int four = 4;
        final int zero = 0;
        final int W = Integer.parseInt (arr[zero]);
        final int H = Integer.parseInt (arr[one]);
        System.out.println (three * W == four * H ? aspectRatio43
                                                  : aspectRatio169);
        System.exit (0);
    }
}