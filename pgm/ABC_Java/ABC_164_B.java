import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        int A, B, C, D;
        A = Integer.parseInt (arr[0]);
        B = Integer.parseInt (arr[1]);
        C = Integer.parseInt (arr[2]);
        D = Integer.parseInt (arr[3]);
        System.out.println ((B + C - 1) / B <= (A + D - 1) / D ? "Yes" : "No");
        return;
    }
}