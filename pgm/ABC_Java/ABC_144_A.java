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
        int A, B;
        A = Integer.parseInt (arr[0]);
        B = Integer.parseInt (arr[1]);
        System.out.println (A <= 9 && B <= 9 ? A * B : -1);
        return;
    }
}