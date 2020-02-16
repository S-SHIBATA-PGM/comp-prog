import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        int H = Integer.parseInt(arr[0]);
        int A = Integer.parseInt(arr[1]);
        System.out.println(H % A != 0 ? H / A + 1 : H / A);
    }
}