import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String S = reader.readLine();
        boolean flg =
            S.charAt (2) == S.charAt (3) && S.charAt (4) == S.charAt (5);
        System.out.println (flg ? "Yes" : "No");
    }
}