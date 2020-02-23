import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        int H = Integer.parseInt(arr[0]);
        String[] A = reader.readLine().split(" ");
        int accum = 0;
        for (int i = 0; i < A.length; i++)
            accum += Integer.parseInt(A[i]);
        System.out.println(1 < Math.ceil((double) H / accum) ? "No" : "Yes");
    }
}