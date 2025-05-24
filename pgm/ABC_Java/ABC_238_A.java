import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final double n = Double.parseDouble (reader.readLine());
        final String Yes = "Yes";
        final String No = "No";
        final double two = Double.valueOf (2);
        final double left = Math.pow (two, n);
        final double right = Math.pow (n, two);
        if (Double.valueOf (left).compareTo (Double.valueOf (right)) > 0) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        return;
    }
}