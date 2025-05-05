import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    private static void checkSolved (int[] arr, int p) {
        if (p == 1) {
            arr[1] += 1;
        } else if (p == 2) {
            arr[2] += 1;
        } else if (p == 3) {
            arr[1] += 1;
            arr[2] += 1;
        } else if (p == 4) {
            arr[3] += 1;
        } else if (p == 5) {
            arr[1] += 1;
            arr[3] += 1;
        } else if (p == 6) {
            arr[2] += 1;
            arr[3] += 1;
        } else if (p == 7) {
            arr[1] += 1;
            arr[2] += 1;
            arr[3] += 1;
        }
    }

    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int A = Integer.parseInt (arr[0]);
        final int B = Integer.parseInt (arr[1]);
        final int[] AB = new int[4];
        checkSolved (AB, A);
        checkSolved (AB, B);
        int point = 0;
        for (int i = 1; i < 4; i++) {
            if (0 < AB[i]) {
                point += i;
                if (i == 3) {
                    point += 1;
                }
            }
        }
        System.out.println (point);
        return;
    }
}