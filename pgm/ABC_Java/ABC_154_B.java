import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String line = reader.readLine();
        for (int i = 0; i < line.length(); i++) {
            System.out.print("x");
        }
        System.out.println();
    }
}