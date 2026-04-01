import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int N = Integer.parseInt (arr[zero]);
        final int S = Integer.parseInt (arr[one]);
        final int T = Integer.parseInt (arr[two]);
        final int W = Integer.parseInt (reader.readLine());
        String line = "";
        int[] A = new int[N];
        int i = zero;
        A[i] = W;
        int pre = A[i];
        i++;
        while ((line = reader.readLine()) != null) {
            A[i] = pre + Integer.parseInt (line);
            pre = A[i];
            i++;
        }
        System.out.println (
            Arrays.stream (A).filter (a -> a >= S && a <= T).count());
        System.exit (0);
    }
}