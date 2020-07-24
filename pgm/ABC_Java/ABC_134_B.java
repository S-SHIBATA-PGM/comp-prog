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
        int N, D;
        N = Integer.parseInt (arr[0]);
        D = Integer.parseInt (arr[1]);
        System.out.println ((int)Math.ceil (N / (2.0 * D + 1)));
        return;
    }
}