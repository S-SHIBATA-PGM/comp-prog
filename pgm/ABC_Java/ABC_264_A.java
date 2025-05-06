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
        final String atcoder = "atcoder";
        final int L = Integer.parseInt (arr[0]);
        final int R = Integer.parseInt (arr[1]);
        System.out.println (atcoder.substring (L - 1, R));
        return;
    }
}