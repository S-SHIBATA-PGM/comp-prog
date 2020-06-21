import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        long A, B, K;
        A = Long.parseLong (arr[0]);
        B = Long.parseLong (arr[1]);
        K = Long.parseLong (arr[2]);
        System.out.println (
            String.valueOf (A - Math.min (A, K)) + " " +
            String.valueOf (B - Math.min (B, K - Math.min (A, K))));
        return;
    }
}