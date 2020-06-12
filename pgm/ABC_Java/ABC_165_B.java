import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        long X = Long.parseLong (reader.readLine());
        long cur = 100L;
        int ans = 0;
        while (cur < X) {
            cur += cur / 100;
            ans++;
        }
        System.out.println (ans);
        return;
    }
}