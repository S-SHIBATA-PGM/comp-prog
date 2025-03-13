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
        final int A = Integer.parseInt (arr[0]);
        final int B = Integer.parseInt (arr[1]);
        if (A == B) {
            System.out.println (1);
        } else if (Math.abs (A - B) % 2 == 0) {
            System.out.println (3);
        } else {
            System.out.println (2);
        }
        return;
    }
}