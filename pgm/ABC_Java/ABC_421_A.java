import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int zero = 0;
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String[] S = new String[N];
        for (int i = zero; i < N; i++) {
            S[i] = reader.readLine();
        }
        final String[] arr = reader.readLine().split (" ");
        reader.close();
        int X = Integer.parseInt (arr[zero]);
        String Y = arr[one];
        if (S[X - one].equals (Y)) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        System.exit (0);
    }
}