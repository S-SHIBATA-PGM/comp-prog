import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int H = sc.nextInt();
        final int W = sc.nextInt();
        final String Yes = "Yes";
        final String No = "No";
        final char sharp = '#';
        final int two = 2;
        final int four = 4;
        final int zero = 0;
        // 下、右、上、左
        final int drn = 4;
        final int[] dy = {1, 0, -1, 0};
        final int[] dx = {0, 1, 0, -1};
        String[] grid = new String[H];
        for (int y = zero; y < H; y++) {
            grid[y] = sc.nextString();
        }
        String msg = Yes;
        for (int y = zero; y < H; y++) {
            for (int x = zero; x < W; x++) {
                if (grid[y].charAt (x) != sharp)
                    continue;
                int cnt = zero;
                for (int k = zero; k < drn; k++) {
                    int ny = y + dy[k];
                    int nx = x + dx[k];
                    if (ny < zero || H <= ny || nx < zero || W <= nx)
                        continue;
                    if (grid[ny].charAt (nx) == sharp)
                        cnt++;
                }
                if (cnt != two && cnt != four) {
                    msg = No;
                    break;
                }
            }
            if (No.equals (msg)) {
                break;
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (msg);
        out.flush();
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