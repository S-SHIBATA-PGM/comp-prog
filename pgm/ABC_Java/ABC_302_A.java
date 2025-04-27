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
        BigDecimal A = new BigDecimal (arr[0]);
        BigDecimal B = new BigDecimal (arr[1]);
        System.out.println (A.divide (B, MathContext.DECIMAL128)
                                .setScale (0, RoundingMode.CEILING));
        return;
    }
}