import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String line = reader.readLine();
        System.out.println (line.indexOf ("7") == -1 ? "No" : "Yes");
    }
}