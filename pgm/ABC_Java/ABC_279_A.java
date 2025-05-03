import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final char v = 'v';
        final int one = 1;
        final int two = 2;
        int cnt = 0;
        for (char c : reader.readLine().toCharArray()) {
            if (c == v) {
                cnt += one;
            } else {
                cnt += two;
            }
        }
        System.out.println (cnt);
        return;
    }
}