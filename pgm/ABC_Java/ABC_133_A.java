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
        int N, A, B;
        N = Integer.parseInt (arr[0]);
        A = Integer.parseInt (arr[1]);
        B = Integer.parseInt (arr[2]);
        System.out.println (Math.min (A * N, B));
        return;
    }
}