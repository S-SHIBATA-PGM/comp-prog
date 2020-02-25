import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        int a = Integer.parseInt(arr[0]);
        int b = Integer.parseInt(arr[1]);
        int ans = 0;
        if (a < b) {
            ans = a;
            for (int i = 0; i < b - 1; i++)
                ans = 10 * ans + a;
        } else {
            ans = b;
            for (int i = 0; i < a - 1; i++)
                ans = 10 * ans + b;
        }
        System.out.println(ans);
    }
}