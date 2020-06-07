import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        int A = Integer.parseInt (arr[0]);
        int B = Integer.parseInt (arr[1]);
        int K = Integer.parseInt (arr[3]);
        if (K <= A)
            System.out.println (K);
        else if (K <= A + B)
            System.out.println (A);
        else
            System.out.println (A - (K - A - B));
        return;
    }
}