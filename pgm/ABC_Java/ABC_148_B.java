import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int N = Integer.parseInt (reader.readLine());
        String[] arr = reader.readLine().split (" ");
        String S, T;
        S = arr[0];
        T = arr[1];
        StringBuilder ans = new StringBuilder();
        for (int i = 0; i < N; i++) {
            ans.append (S.charAt (i));
            ans.append (T.charAt (i));
        }
        System.out.println (ans.toString());
        return;
    }
}