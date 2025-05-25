import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final double N = Double.parseDouble (reader.readLine());
        final String Yes = "Yes";
        final String No = "No";
        final double two = Double.valueOf (2);
        final double exp = Double.valueOf (31);
        final double num = Math.pow (two, exp);
        if (Double.valueOf (-num).compareTo (Double.valueOf (N)) <= 0 &&
            Double.valueOf (N).compareTo (Double.valueOf (num)) < 0) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        return;
    }
}