import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        double N, M;
        N = Double.parseDouble (arr[0]);
        M = Double.parseDouble (arr[1]);
        System.out.printf ("%.0f%n", Math.ceil (N * (N - 1) / 2) +
                                         Math.ceil (M * (M - 1) / 2));
    }
}