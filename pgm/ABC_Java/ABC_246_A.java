import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String space = " ";
        final int first = 0;
        final int second = 1;
        final int zero = 0;
        final int one = 1;
        final int two = 2;
        final int three = 3;
        final int[] x = new int[three];
        final int[] y = new int[three];
        for (int i = 0; i < three; i++) {
            final int[] xy = Arrays.stream (reader.readLine().split (space))
                                 .mapToInt (Integer::parseInt)
                                 .toArray();
            x[i] = xy[first];
            y[i] = xy[second];
        }
        int pointX = x[zero];
        int pointY = y[zero];
        if (x[two] == x[zero]) {
            pointX = x[one];
        } else if (x[zero] == x[one]) {
            pointX = x[two];
        }
        if (y[two] == y[zero]) {
            pointY = y[one];
        } else if (y[zero] == y[one]) {
            pointY = y[two];
        }
        System.out.print (pointX);
        System.out.print (space);
        System.out.println (pointY);
        return;
    }
}