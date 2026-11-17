import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        int N = sc.nextInt();
        int[] X = new int[N];
        int[] Y = new int[N];
        final int one = 1;
        final int zero = 0;
        for (int i = zero; i < N; i++) {
            X[i] = sc.nextInt();
            Y[i] = sc.nextInt();
        }
        sc.close();
        for (int i = zero; i < N; i++) {
            int maxDistSq = -one;
            int farthestPoint = -one;
            for (int j = zero; j < N; j++) {
                if (i == j)
                    continue;
                int dx = X[i] - X[j];
                int dy = Y[i] - Y[j];
                int distSq = dx * dx + dy * dy;
                if (distSq > maxDistSq) {
                    maxDistSq = distSq;
                    farthestPoint = j + 1;
                }
            }
            System.out.println (farthestPoint);
        }
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