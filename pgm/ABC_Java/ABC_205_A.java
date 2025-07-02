import java.io.*;
// import java.math.*;
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
        final double divisor = 100.0D;
        final double A = arr[0];
        final double B = arr[1];
        System.out.println (A * B / divisor);
        return;
    }
}