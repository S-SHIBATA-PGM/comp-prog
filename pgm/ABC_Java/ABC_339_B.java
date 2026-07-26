import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final char dot = '.';
        final char sharp = '#';
        final int one = 1;
        final int two = 2;
        final int four = 4;
        final int zero = 0;
        final int H = Integer.parseInt (arr[zero]);
        final int W = Integer.parseInt (arr[one]);
        final int N = Integer.parseInt (arr[two]);
        char[][] grid = new char[H][W];
        for (int i = 0; i < H; i++) {
            Arrays.fill (grid[i], dot);
        }
        // 下、右、上、左
        final int drn = four;
        final int[] dy = {one, zero, -one, zero};
        final int[] dx = {zero, one, zero, -one};
        int d = two;
        int x = 0;
        int y = 0;
        for (int i = zero; i < N; i++) {
            if (grid[y][x] == dot) {
                grid[y][x] = sharp;
                d = (d + drn - one) % drn;
            } else {
                grid[y][x] = dot;
                d = (d + one) % drn;
            }
            y = (y + H + dy[d]) % H;
            x = (x + W + dx[d]) % W;
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        for (int i = 0; i < H; i++) {
            out.println (grid[i]);
        }
        out.flush();
        System.exit (0);
    }
}