
import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        long N = Long.parseLong(arr[0]);
        long A = Long.parseLong(arr[1]);
        long B = Long.parseLong(arr[2]);
        long div = N / (A + B);
        long mod = N % (A + B);
        System.out.println(A * div + Math.min(A, mod));
    }
}