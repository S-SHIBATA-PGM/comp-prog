import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String x = "x";
        final String[] arr = reader.readLine().split (x);
        final int a = Integer.parseInt (arr[0]);
        final int b = Integer.parseInt (arr[1]);
        System.out.println (a * b);
        return;
    }
}