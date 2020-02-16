import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        String S = arr[0];
        String T = arr[1];
        arr = reader.readLine().split(" ");
        int A = Integer.parseInt(arr[0]);
        int B = Integer.parseInt(arr[1]);
        String U = reader.readLine();
        if (S.equals(U)) {
            A--;
        } else {
            B--;
        }
        System.out.println(A + " " + B);
    }
}