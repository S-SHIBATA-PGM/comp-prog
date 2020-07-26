// (N * (L + (L + N - 1))) / 2
// (N * (2 * L + N - 1)) / 2
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
        int N, L;
        N = Integer.parseInt (arr[0]);
        L = Integer.parseInt (arr[1]);
        int ans = (N * (2 * L + N - 1)) / 2;
        if (0 < L)
            ans -= L;
        else if (L + N - 1 < 0)
            ans -= L + N - 1;
        System.out.println (ans);
        return;
    }
}