import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        TreeMap<Integer, Integer> A = new TreeMap<>();
        A.put (1, 0);
        A.put (2, 0);
        A.put (3, 0);
        A.put (4, 0);
        for (int i = 0; i < 4; i++) {
            int key = Integer.parseInt (arr[i]);
            A.replace (key, A.get (key) + 1);
        }
        int count = 0;
        for (int i = 1; i <= 4; i++) {
            count += A.get (i) / 2;
        }
        System.out.println (count);
        return;
    }
}