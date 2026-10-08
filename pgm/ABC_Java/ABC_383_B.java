import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    static class Point {
        int y, x;
        Point (int y, int x) {
            this.y = y;
            this.x = x;
        }
    }
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int H = sc.nextInt();
        final int W = sc.nextInt();
        final int D = sc.nextInt();
        final char period = '.';
        final int zero = 0;
        final int one = 1;
        List<Point> floor = new ArrayList<>();
        char[][] grid = new char[H][W];
        for (int i = zero; i < H; i++) {
            grid[i] = sc.nextString().toCharArray();
            for (int j = zero; j < W; j++) {
                if (grid[i][j] == period) {
                    floor.add (new Point (i, j));
                }
            }
        }
        sc.close();
        int max = zero;
        final int size = floor.size();
        for (int i = zero; i < size; i++) {
            for (int j = i + one; j < size; j++) {
                Point p1 = floor.get (i);
                Point p2 = floor.get (j);
                int cnt = zero;
                for (Point p : floor) {
                    int dist1 = Math.abs (p.y - p1.y) + Math.abs (p.x - p1.x);
                    int dist2 = Math.abs (p.y - p2.y) + Math.abs (p.x - p2.x);
                    if (dist1 <= D || dist2 <= D) {
                        cnt++;
                    }
                }
                if (cnt > max) {
                    max = cnt;
                }
            }
        }
        System.out.println (max);
        System.exit (0);
    }
    // FastScanner start
    static class FastScanner {
        final private int BUFFER_SIZE = 1 << 16;
        private DataInputStream din;
        private byte[] buffer;
        private int bufferPointer, bytesRead;
        public FastScanner() {
            din = new DataInputStream (System.in);
            buffer = new byte[BUFFER_SIZE];
            bufferPointer = bytesRead = 0;
        }
        private byte read() throws IOException {
            if (bufferPointer == bytesRead)
                fillBuffer();
            return buffer[bufferPointer++];
        }
        public void close() throws IOException {
            if (din == null)
                return;
            din.close();
        }
        private void fillBuffer() throws IOException {
            bytesRead = din.read (buffer, bufferPointer = 0, BUFFER_SIZE);
            if (bytesRead == -1)
                buffer[0] = -1;
        }
        public String nextString() throws IOException {
            byte c = read();
            while (Character.isWhitespace (c)) {
                c = read();
            }
            StringBuilder builder = new StringBuilder();
            builder.append ((char)c);
            c = read();
            while (!Character.isWhitespace (c)) {
                builder.append ((char)c);
                c = read();
            }
            return builder.toString();
        }
        public int nextInt() throws IOException {
            int ret = 0;
            byte c = read();
            while (c <= ' ')
                c = read();
            boolean neg = (c == '-');
            if (neg)
                c = read();
            do {
                ret = ret * 10 + c - '0';
            } while ((c = read()) >= '0' && c <= '9');
            if (neg)
                return -ret;
            return ret;
        }
    }
    // FastScanner end
}