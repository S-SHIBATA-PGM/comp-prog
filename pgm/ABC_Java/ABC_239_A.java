import java.io.*;
import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static BigDecimal sqrt (BigDecimal a, int scale) {
        // sqrt of double
        BigDecimal x =
            new BigDecimal (Math.sqrt (a.doubleValue()), MathContext.DECIMAL64);
        if (scale < 17)
            return x;

        BigDecimal b2 = new BigDecimal (2);
        for (int tempScale = 16; tempScale < scale; tempScale *= 2) {
            // x = x - (x * x - a) / (2 * x);
            // x = x.subtract (x.multiply (x).subtract (a).divide (
            //     x.multiply (b2), scale, BigDecimal.ROUND_HALF_EVEN));
            x = x.subtract (x.multiply (x).subtract (a).divide (
                x.multiply (b2), scale, RoundingMode.HALF_EVEN));
        }
        return x;
    }

    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final double H = Double.parseDouble (reader.readLine());
        final double additional = Double.valueOf (12800000);
        final int scale = 50;
        final int digit = 9;
        BigDecimal x = BigDecimal.valueOf (H);
        x = x.add (BigDecimal.valueOf (additional))
                .multiply (BigDecimal.valueOf (H));
        x = sqrt (x, scale);
        System.out.println (
            x.setScale (digit, RoundingMode.DOWN).toPlainString());
        return;
    }
}