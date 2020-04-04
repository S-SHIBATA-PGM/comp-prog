import java.io.*;

public class Main {
    public static boolean checkPal (StringBuilder sb) {
        return sb.toString().contentEquals (sb.reverse());
    }

    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String S = reader.readLine();
        StringBuilder sb = new StringBuilder (S);
        String str = S.substring (0, S.length() / 2);
        StringBuilder sbstr = new StringBuilder (str);
        System.out.println (checkPal (sb) && checkPal (sbstr) ? "Yes" : "No");
    }
}