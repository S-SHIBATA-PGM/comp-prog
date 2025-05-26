import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] S = reader.readLine().split ("");
        final String[] arr = reader.readLine().split (" ");
        final int a = Integer.parseInt (arr[0]);
        final int b = Integer.parseInt (arr[1]);
        String s = S[a - 1];
        S[a - 1] = S[b - 1];
        S[b - 1] = s;
        System.out.println (String.join ("", S));
        return;
    }
}