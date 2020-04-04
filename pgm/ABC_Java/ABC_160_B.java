import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int X = Integer.parseInt (reader.readLine());
        int rem = X % 500;
        System.out.println (X / 500 * 1000 + rem / 5 * 5);
    }
}