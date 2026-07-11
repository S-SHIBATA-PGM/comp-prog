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
        final String sharp = "#";
        final String dot = ".";
        final int one = 1;
        final int zero = 0;
        final int H = Integer.parseInt (arr[zero]);
        final int W = Integer.parseInt (arr[one]);
        for (int i = zero; i < H; i++) {
            if (i == zero || i == H - 1) {
                System.out.println (sharp.repeat (W));
            } else {
                System.out.println (
                    sharp.concat (dot.repeat (W - 2)).concat (sharp));
            }
        }
        System.exit (0);
    }
}