import java.io.*;
import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final double[] arr = Arrays.stream (reader.readLine().split (" "))
                                 .mapToDouble (Double::parseDouble)
                                 .toArray();
        final double zero = 0.0;
        final double one = 1.0;
        final int twelve = 12;
        final double A = arr[0];
        final double B = arr[1];
        final double C = arr[2];
        final double X = arr[3];
        if (Double.compare (A, X) >= 0) {
            System.out.println (BigDecimal.valueOf (one)
                                    .setScale (twelve, RoundingMode.DOWN)
                                    .toPlainString());
        } else if (Double.compare (B, X) >= 0) {
            System.out.println (BigDecimal.valueOf (C)
                                    .divide (BigDecimal.valueOf (B).subtract (
                                                 BigDecimal.valueOf (A)),
                                             twelve, RoundingMode.DOWN)
                                    .toPlainString());
        } else {
            System.out.println (BigDecimal.valueOf (zero)
                                    .setScale (twelve, RoundingMode.DOWN)
                                    .toPlainString());
        }
        return;
    }
}