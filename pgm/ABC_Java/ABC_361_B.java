import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int a = sc.nextInt();
        final int b = sc.nextInt();
        final int c = sc.nextInt();
        final int d = sc.nextInt();
        final int e = sc.nextInt();
        final int f = sc.nextInt();
        final int g = sc.nextInt();
        final int h = sc.nextInt();
        final int i = sc.nextInt();
        final int j = sc.nextInt();
        final int k = sc.nextInt();
        final int l = sc.nextInt();
        sc.close();
        final String Yes = "Yes";
        final String No = "No";
        boolean overlapX = Math.max (a, g) < Math.min (d, j);
        boolean overlapY = Math.max (b, h) < Math.min (e, k);
        boolean overlapZ = Math.max (c, i) < Math.min (f, l);
        if (overlapX && overlapY && overlapZ) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
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