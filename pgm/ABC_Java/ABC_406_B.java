import java.io.*;
import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int N = sc.nextInt();
        final int K = sc.nextInt();
        final int zero = 0;
        BigInteger limit = BigInteger.TEN.pow (K);
        BigInteger cur = BigInteger.ONE;
        for (int i = zero; i < N; i++) {
            BigInteger A = sc.nextBigInteger();
            cur = cur.multiply (A);
            if (cur.compareTo (limit) >= zero) {
                cur = BigInteger.ONE;
            }
        }
        sc.close();
        System.out.println (cur);
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
        public BigInteger nextBigInteger() throws IOException {
            byte c = read();
            while (c <= ' ') {
                c = read();
            }
            boolean neg = (c == '-');
            if (neg) {
                c = read();
            }
            StringBuilder sb = new StringBuilder();
            if (neg) {
                sb.append ('-');
            }
            do {
                sb.append ((char)c);
            } while ((c = read()) >= '0' && c <= '9');
            return new BigInteger (sb.toString());
        }
    }
    // FastScanner end
}