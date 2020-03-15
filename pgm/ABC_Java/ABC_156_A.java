import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        int N = Integer.parseInt(arr[0]);
        int R = Integer.parseInt(arr[1]);
        System.out.println(10 <= N ? R : R + 100 * (10 - N));
    }
}