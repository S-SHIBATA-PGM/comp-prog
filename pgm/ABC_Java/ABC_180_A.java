import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String space = " ";
        final String[] arr = reader.readLine().split (space);
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int N = Integer.parseInt (arr[zero]);
        final int A = Integer.parseInt (arr[one]);
        final int B = Integer.parseInt (arr[two]);
        System.out.println (N - A + B);
        return;
    }
}