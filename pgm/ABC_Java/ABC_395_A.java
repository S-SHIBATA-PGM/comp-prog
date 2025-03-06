import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int N = Integer.parseInt (reader.readLine());
        String[] arr = reader.readLine().split (" ");
        int[] A = new int[N];
        for (int i = 0; i < N; i++) {
            A[i] = Integer.parseInt (arr[i]);
        }
        final String Yes = "Yes";
        final String No = "No";
        int pre = 0;
        for (int i = 0; i < N; i++) {
            if (A[i] <= pre) {
                System.out.println (No);
                return;
            }
            pre = A[i];
        }
        System.out.println (Yes);
        return;
    }
}