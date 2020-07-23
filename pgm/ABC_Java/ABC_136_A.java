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
        int A, B, C;
        A = Integer.parseInt (arr[0]);
        B = Integer.parseInt (arr[1]);
        C = Integer.parseInt (arr[2]);
        System.out.println (A < B + C ? B + C - A : 0);
        return;
    }
}