import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        String S, T;
        S = arr[0];
        T = arr[1];
        System.out.println (T + S);
        return;
    }
}