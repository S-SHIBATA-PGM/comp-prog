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
        final int M = Integer.parseInt (arr[1]);
        final int X = Integer.parseInt (arr[2]);
        final int T = Integer.parseInt (arr[3]);
        final int D = Integer.parseInt (arr[4]);
        System.out.println (M <= X ? T - D * (X - M) : T);
        return;
    }
}