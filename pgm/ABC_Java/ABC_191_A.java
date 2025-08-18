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
        final int V = Integer.parseInt (arr[0]);
        final int T = Integer.parseInt (arr[1]);
        final int S = Integer.parseInt (arr[2]);
        final int D = Integer.parseInt (arr[3]);
        System.out.println (V * T <= D && D <= V * S ? No : Yes);
        return;
    }
}