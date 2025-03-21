import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int H = Integer.parseInt (reader.readLine());
        int ans = 1;
        int base = 2;
        int e = 1;
        int h = 1;
        while (h <= H) {
            e *= base;
            h += e;
            ans++;
        }
        System.out.println (ans);
        return;
    }
}