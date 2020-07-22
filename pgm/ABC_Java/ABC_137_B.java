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
        int K, X;
        K = Integer.parseInt (arr[0]);
        X = Integer.parseInt (arr[1]);
        StringJoiner sj = new StringJoiner (" ");
        for (int i = X - K + 1; i < X + K; i++)
            sj.add (String.valueOf (i));
        System.out.println (sj.toString());
        return;
    }
}
