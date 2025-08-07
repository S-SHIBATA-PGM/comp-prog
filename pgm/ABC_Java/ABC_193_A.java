import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int one = 1;
        final int zero = 0;
        final double unity = 1;
        final double oneHundredPercent = 100;
        final double A = Double.parseDouble (arr[zero]);
        final double B = Double.parseDouble (arr[one]);
        System.out.println ((unity - B / A) * oneHundredPercent);
        return;
    }
}