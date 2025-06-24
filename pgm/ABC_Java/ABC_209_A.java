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
        final int zero = 0;
        final int A = Integer.parseInt (arr[0]);
        final int B = Integer.parseInt (arr[1]);
        System.out.println (Math.max (zero, B - A + 1));
        return;
    }
}