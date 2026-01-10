import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int one = 1;
        final double two = 2d;
        final int zero = 0;
        final double a = Double.parseDouble (arr[zero]);
        final double b = Double.parseDouble (arr[one]);
        System.out.println ((int)Math.ceil ((a + b) / two));
        System.exit (0);
    }
}