import java.io.*;
import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int digit = 7;
        final double A = Double.parseDouble (arr[0]);
        final double B = Double.parseDouble (arr[1]);
        BigDecimal C = BigDecimal.valueOf (A);
        C = C.subtract (BigDecimal.valueOf (B))
                .divide (BigDecimal.valueOf (3), digit, RoundingMode.DOWN)
                .add (BigDecimal.valueOf (B));
        System.out.println (
            C.setScale (digit, RoundingMode.DOWN).toPlainString());
        return;
    }
}