import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        int X, Y, Z;
        X = Integer.parseInt (arr[0]);
        Y = Integer.parseInt (arr[1]);
        Z = Integer.parseInt (arr[2]);
        System.out.println (Z + " " + X + " " + Y);
    }
}