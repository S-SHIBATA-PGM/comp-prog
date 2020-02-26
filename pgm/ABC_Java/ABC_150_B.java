import java.io.*;
import java.util.regex.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        reader.readLine();
        String S = reader.readLine();
        Matcher m = Pattern.compile("ABC").matcher(S);
        int ans = 0;
        while (m.find())
            ans++;
        System.out.println(ans);
    }
}