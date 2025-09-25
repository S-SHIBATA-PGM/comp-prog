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
        final int two = 2;
        final int three = 3;
        final int zero = 0;
        final int A = Integer.parseInt (arr[zero]);
        final int P = Integer.parseInt (arr[one]);
        System.out.println ((A * three + P) / two);
        return;
    }
}