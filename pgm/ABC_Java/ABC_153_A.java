import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        double H = Double.parseDouble(arr[0]);
        int A = Integer.parseInt(arr[1]);
        System.out.println((int) Math.ceil(H / A));
    }
}