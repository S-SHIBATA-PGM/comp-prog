import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String space = " ";
        final char sharp = '#';
        final int one = 1;
        final int zero = 0;
        final String[] arr = reader.readLine().split (space);
        final int H = Integer.parseInt (arr[zero]);
        final int W = Integer.parseInt (arr[one]);
        String[] grid = new String[H];
        int minY = H + one;
        int maxY = -one;
        int minX = W + one;
        int maxX = -one;
        for (int y = zero; y < H; y++) {
            grid[y] = reader.readLine();
            for (int x = zero; x < W; x++) {
                if (grid[y].charAt (x) == sharp) {
                    if (y < minY)
                        minY = y;
                    if (y > maxY)
                        maxY = y;
                    if (x < minX)
                        minX = x;
                    if (x > maxX)
                        maxX = x;
                }
            }
        }
        reader.close();
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        for (int y = minY; y <= maxY; y++) {
            out.println (grid[y].substring (minX, maxX + one));
        }
        out.flush();
        System.exit (0);
    }
}