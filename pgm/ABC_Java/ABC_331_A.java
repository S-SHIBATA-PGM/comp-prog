import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] MD = reader.readLine().split (" ");
        final String[] ymd = reader.readLine().split (" ");
        final int M = Integer.parseInt (MD[0]);
        final int D = Integer.parseInt (MD[1]);
        int y = Integer.parseInt (ymd[0]);
        int m = Integer.parseInt (ymd[1]);
        int d = Integer.parseInt (ymd[2]);
        d++;
        if (d > D) {
            d -= D;
            m++;
        }
        if (m > M) {
            m -= M;
            y++;
        }
        System.out.println (String.valueOf (y)
                                .concat (" ")
                                .concat (String.valueOf (m))
                                .concat (" ")
                                .concat (String.valueOf (d)));
        return;
    }
}