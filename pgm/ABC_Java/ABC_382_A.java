import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] ND = reader.readLine().split (" ");
        String arr = reader.readLine();
        char[] S = arr.toCharArray();
        int D;
        D = Integer.parseInt (ND[1]);
        final char dot = '.';
        int cnt = 0;
        for (char c : S) {
            if (dot == c) {
                cnt++;
            }
        }
        System.out.println (cnt + D);
        return;
    }
}