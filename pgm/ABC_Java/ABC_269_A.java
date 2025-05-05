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
        final String Takahashi = "Takahashi";
        final int a = Integer.parseInt (arr[0]);
        final int b = Integer.parseInt (arr[1]);
        final int c = Integer.parseInt (arr[2]);
        final int d = Integer.parseInt (arr[3]);
        System.out.println ((a + b) * (c - d));
        System.out.println (Takahashi);
        return;
    }
}