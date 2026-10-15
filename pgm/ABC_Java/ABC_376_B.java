import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int N = sc.nextInt();
        final int Q = sc.nextInt();
        final char cL = 'L';
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        int left = one;
        int right = two;
        int total = zero;
        for (int i = zero; i < Q; i++) {
            char hand = sc.nextString().charAt (zero);
            int target = sc.nextInt();
            if (hand == cL) {
                int cost = getDist (left, target, right, N);
                total += cost;
                left = target;
            } else {
                int cost = getDist (right, target, left, N);
                total += cost;
                right = target;
            }
        }
        System.out.println (total);
        System.exit (0);
    }
    private static int getDist (int start, int target, int block, int N) {
        int clockWiseDist = (target - start + N) % N;
        int blockClockDist = (block - start + N) % N;
        boolean blockOnClockWise =
            (blockClockDist > 0 && blockClockDist < clockWiseDist);
        if (!blockOnClockWise && clockWiseDist > 0) {
            return clockWiseDist;
        } else {
            return (start - target + N) % N;
        }
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