import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final int[] A = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        final int zero = 0;
        final int seven = 7;
        final String sp = " ";
        StringBuilder sb = new StringBuilder();
        String s = "";
        int sum = 0;
        int j = 0;
        int next = 0;
        for (int i = 0; i < N; i++) {
            next = j + seven;
            for (; j < next; j++) {
                sum += A[j];
            }
            sb.append (s);
            sb.append (String.valueOf (sum));
            s = sp;
            sum = zero;
        }
        System.out.println (sb.toString());
        return;
    }
}