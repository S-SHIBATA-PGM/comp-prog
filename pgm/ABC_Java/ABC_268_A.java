import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int A = Integer.parseInt (arr[0]);
        final int B = Integer.parseInt (arr[1]);
        final int C = Integer.parseInt (arr[2]);
        final int D = Integer.parseInt (arr[3]);
        final int E = Integer.parseInt (arr[4]);
        Set<Integer> set = new HashSet<>();
        set.add (A);
        set.add (B);
        set.add (C);
        set.add (D);
        set.add (E);
        System.out.println (set.size());
        return;
    }
}