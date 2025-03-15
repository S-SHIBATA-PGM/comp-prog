import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final String Yes = "Yes";
        final String No = "No";
        final int N, T, A;
        N = Integer.parseInt (arr[0]);
        T = Integer.parseInt (arr[1]);
        A = Integer.parseInt (arr[2]);
        System.out.println (Math.max (T, A) > N / 2 ? Yes : No);
        return;
    }
}