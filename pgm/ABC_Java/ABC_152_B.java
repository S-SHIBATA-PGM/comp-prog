import java.io.*;
import java.util.*;

public class Main {
    public static String repeat(String str, int n) {
        return String.join("", Collections.nCopies(n, str));
    }

    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        int a = Integer.parseInt(arr[0]);
        int b = Integer.parseInt(arr[1]);
        System.out.println(a < b ? repeat(arr[0], b) : repeat(arr[1], a));
    }
}