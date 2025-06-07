import java.io.*;
import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String num = reader.readLine();
        final int zero = 0;
        BigDecimal X = new BigDecimal (num);
        System.out.println (X.setScale (zero, RoundingMode.HALF_UP));
        return;
    }
}