import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] NMP = reader.readLine().split (" ");
        final int N = Integer.parseInt (NMP[0]);
        final int M = Integer.parseInt (NMP[1]);
        final int P = Integer.parseInt (NMP[2]);
        int num = 0;
        int day = 0;
        for (int i = 0; i < N; i++) {
            day = M + i * P;
            if (N < day) {
                break;
            }
            num++;
        }
        System.out.println (num);
        return;
    }
}