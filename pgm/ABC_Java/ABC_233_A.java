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
        final double X = Double.parseDouble (arr[0]);
        final double Y = Double.parseDouble (arr[1]);
        System.out.println (
            String.format ("%.0f", Math.max (0, Math.ceil ((Y - X) / 10))));
        return;
    }
}