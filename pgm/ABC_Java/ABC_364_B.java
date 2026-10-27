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
        final String space = " ";
        final char cL = 'L';
        final char cR = 'R';
        final char cU = 'U';
        final char cD = 'D';
        final char cPeriod = '.';
        final int one = 1;
        final int zero = 0;
        final int Si = sc.nextInt() - one;
        final int Sj = sc.nextInt() - one;
        final char[][] C = new char[H][W];
        for (int i = zero; i < H; i++) {
            C[i] = sc.nextString().toCharArray();
        }
        final String X = sc.nextString();
        sc.close();
        int y = Si;
        int x = Sj;
        for (int i = zero; i < X.length(); i++) {
            char dir = X.charAt (i);
            int nextX = x;
            int nextY = y;
            if (dir == cL) {
                nextX--;
            } else if (dir == cR) {
                nextX++;
            } else if (dir == cU) {
                nextY--;
            } else if (dir == cD) {
                nextY++;
            }
            if (nextY >= zero && nextY < H && nextX >= 0 && nextX < W &&
                C[nextY][nextX] == cPeriod) {
                y = nextY;
                x = nextX;
            }
        }
        System.out.println (String.valueOf (y + one).concat (space).concat (
            String.valueOf (x + one)));
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