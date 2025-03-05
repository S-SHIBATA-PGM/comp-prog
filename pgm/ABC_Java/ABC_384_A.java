import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        char[] S = reader.readLine().toCharArray();
        int N = Integer.parseInt (arr[0]);
        char c1, c2;
        c1 = arr[1].toCharArray()[0];
        c2 = arr[2].toCharArray()[0];
        for (int i = 0; i < N; i++) {
            if (c1 != S[i]) {
                S[i] = c2;
            }
        }
        System.out.println (String.valueOf (S));
        return;
    }
}