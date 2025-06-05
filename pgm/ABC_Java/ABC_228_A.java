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
        final String Yes = "Yes";
        final String No = "No";
        final int twentyFour = 24;
        final int S = Integer.parseInt (arr[0]);
        int T = Integer.parseInt (arr[1]);
        int X = Integer.parseInt (arr[2]);
        T = T < S ? T + twentyFour : T;
        X = X < S ? X + twentyFour : X;
        if (S <= X && X < T) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        return;
    }
}