import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final String space = " ";
        final char cAt = '@';
        final char cPeriod = '.';
        final char cU = 'U';
        final char cD = 'D';
        final char cL = 'L';
        final char cR = 'R';
        final char cSharp = '#';
        final int one = 1;
        final int zero = 0;
        final int H = sc.nextInt();
        final int W = sc.nextInt();
        int X = sc.nextInt() - one;
        int Y = sc.nextInt() - one;
        final char[][] grid = new char[H][W];
        for (int i = zero; i < H; i++) {
            grid[i] = sc.nextString().toCharArray();
        }
        final String T = sc.nextString();
        sc.close();
        int cnt = zero;
        if (grid[X][Y] == cAt) {
            cnt++;
            grid[X][Y] = cPeriod;
        }
        for (int i = 0; i < T.length(); i++) {
            char dir = T.charAt (i);
            int nx = X;
            int ny = Y;
            if (dir == cU)
                nx--;
            else if (dir == cD)
                nx++;
            else if (dir == cL)
                ny--;
            else if (dir == cR)
                ny++;
            if (grid[nx][ny] != cSharp) {
                X = nx;
                Y = ny;
                if (grid[X][Y] == cAt) {
                    cnt++;
                    grid[nx][ny] = cPeriod;
                }
            }
        }
        System.out.println (String.join (space, String.valueOf (X + one),
                                         String.valueOf (Y + one),
                                         String.valueOf (cnt)));
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