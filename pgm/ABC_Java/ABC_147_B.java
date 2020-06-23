import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String S = reader.readLine();
        int ans = 0;
        for (int i = 0; i < S.length() / 2; i++)
            if (S.charAt (i) != S.charAt (S.length() - i - 1))
                ans++;
        System.out.println (ans);
        return;
    }
}