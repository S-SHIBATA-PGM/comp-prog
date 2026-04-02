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
        int N = Integer.parseInt (reader.readLine());
        final int one = 1;
        final int zero = 0;
        int i = zero;
        List<Integer> list = new ArrayList<>();
        while (N > zero) {
            if ((N & one) == one) {
                list.add (one << i);
            }
            N >>= one;
            i++;
        }
        Collections.sort (list);
        System.out.println (list.size());
        for (int x : list) {
            System.out.println (x);
        }
        System.exit (0);
    }
}