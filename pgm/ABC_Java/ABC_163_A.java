import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int R = Integer.parseInt (reader.readLine());
        System.out.println (2 * R * Math.PI);
    }
}