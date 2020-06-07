import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String S = reader.readLine();
        String T = reader.readLine();
        System.out.println (S.equals (T.substring (0, T.length() - 1)) ? "Yes"
                                                                       : "No");
        return;
    }
}