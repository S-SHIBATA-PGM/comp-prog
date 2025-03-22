import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        final String Yes = "Yes";
        final String No = "No";
        final int end = 349;
        final int ng = 316;
        final int zero = 0;
        final int num = Integer.parseInt (S.substring (3, 6));
        if (num <= end && ng != num && zero != num) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        return;
    }
}