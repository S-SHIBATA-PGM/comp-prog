import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String S = reader.readLine();
        System.out.println ("ARC".equals (S) ? "ABC" : "ARC");
        return;
    }
}