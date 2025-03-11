import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final char[] S = reader.readLine().toCharArray();
        final char sharp = '#';
        final char dot = '.';
        int cnt = 0;
        for (int i = 0; i < N - 2; i++) {
            if (sharp == S[i] && dot == S[i + 1] && sharp == S[i + 2]) {
                cnt++;
            }
        }
        System.out.println (cnt);
        return;
    }
}