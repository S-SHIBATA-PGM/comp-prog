import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String line = reader.readLine();
        String ans = "";
        for (int i = 0; i < line.length(); i++)
            ans = ans.concat("x");
        System.out.println(ans);
    }
}