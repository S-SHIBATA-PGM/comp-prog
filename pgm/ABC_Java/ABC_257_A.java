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
        final int N = Integer.parseInt (arr[0]);
        final int X = Integer.parseInt (arr[1]);
        final char A = 'A';
        System.out.println (X % N > 0 ? Character.toString (A + X / N)
                                      : Character.toString (A + X / N - 1));
        return;
    }
}