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
        final int A, B;
        A = Integer.parseInt (arr[0]);
        B = Integer.parseInt (arr[1]);
        final String Yes = "Yes";
        final String No = "No";
        // 右、左
        final int drn = 2;
        final int[] dy = {0, 0};
        final int[] dx = {1, -1};
        final int[][] Nine = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
        final int H = Nine.length;
        final int W = Nine[0].length;
        boolean break_flg = false;
        String ans = No;
        for (int y = 0; y < Nine.length; y++) {
            if (break_flg)
                break;
            for (int x = 0; x < Nine[0].length; x++) {
                if (break_flg)
                    break;
                if (Nine[y][x] == A) {
                    for (int k = 0; k < drn; k++) {
                        if (break_flg)
                            break;
                        int ny = y + dy[k];
                        int nx = x + dx[k];
                        if (ny < 0 || H <= ny || nx < 0 || W <= nx)
                            continue;
                        if (Nine[ny][nx] == B) {
                            break_flg = true;
                            ans = Yes;
                        }
                    }
                    break_flg = true;
                }
            }
        }
        System.out.println (ans);
        return;
    }
}