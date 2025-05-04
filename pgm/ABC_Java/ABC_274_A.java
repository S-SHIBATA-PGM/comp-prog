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
        final double A = Double.parseDouble (arr[0]);
        final double B = Double.parseDouble (arr[1]);
        BigDecimal average = new BigDecimal (B / A);
        System.out.println (average.setScale (3, RoundingMode.HALF_UP));
        return;
    }
}