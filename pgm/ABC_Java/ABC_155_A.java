import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        int A = Integer.parseInt(arr[0]);
        int B = Integer.parseInt(arr[1]);
        int C = Integer.parseInt(arr[2]);
        boolean flg = false;
        if (A == B && B != C)
            flg = true;
        if (B == C && C != A)
            flg = true;
        if (C == A && A != B)
            flg = true;
        System.out.println(flg ? "Yes" : "No");
    }
}
