import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        int S, W;
        S = Integer.parseInt (arr[0]);
        W = Integer.parseInt (arr[1]);
        System.out.println (S <= W ? "unsafe" : "safe");
        return;
    }
}