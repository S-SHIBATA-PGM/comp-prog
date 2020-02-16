import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        int K = Integer.parseInt(arr[0]);
        int X = Integer.parseInt(arr[1]);
        System.out.println(X <= K * 500 ? "Yes" : "No");
    }
}