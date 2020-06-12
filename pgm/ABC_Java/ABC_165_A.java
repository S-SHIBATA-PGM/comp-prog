import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int K = Integer.parseInt (reader.readLine());
        String[] arr = reader.readLine().split (" ");
        int A, B;
        A = Integer.parseInt (arr[0]);
        B = Integer.parseInt (arr[1]);
        System.out.println (A <= B / K * K ? "OK" : "NG");
        return;
    }
}