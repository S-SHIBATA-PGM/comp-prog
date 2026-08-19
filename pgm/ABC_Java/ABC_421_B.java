import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int X = sc.nextInt();
        final int Y = sc.nextInt();
        final int one = 1;
        final int two = 2;
        final int three = 3;
        final int ten = 10;
        final int eleven = 11;
        long[] a = new long[eleven];
        a[one] = X;
        a[two] = Y;
        for (int i = three; i <= ten; i++) {
            long sum = a[i - one] + a[i - two];
            a[i] = f (sum);
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (a[ten]);
        out.flush();
        System.exit (0);
    }
    static long f (long x) {
        String s = String.valueOf (x);
        return Long.parseLong (new StringBuilder (s).reverse().toString());
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