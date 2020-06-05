import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int K = Integer.parseInt (reader.readLine());
        String S = reader.readLine();
        if (S.length() <= K)
            System.out.println (S);
        else
            System.out.println (S.substring (0, K) + "...");
        return;
    }
}