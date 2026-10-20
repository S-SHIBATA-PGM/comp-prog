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
        final int M = sc.nextInt();
        final String Yes = "Yes";
        final String No = "No";
        final String yn = "\n";
        final char cM = 'M';
        final int one = 1;
        final int zero = 0;
        boolean[] hasFirstBoy = new boolean[N + one];
        StringBuilder sb = new StringBuilder();
        for (int i = zero; i < M; i++) {
            int A = sc.nextInt();
            char B = sc.nextChar();
            if (B == cM && !hasFirstBoy[A]) {
                hasFirstBoy[A] = true;
                sb.append (Yes);
                sb.append (yn);
            } else {
                sb.append (No);
                sb.append (yn);
            }
        }
        sc.close();
        System.out.print (sb.toString());
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
        public char nextChar() throws IOException {
            byte c = read();
            while (Character.isWhitespace (c)) {
                c = read();
            }
            return (char)c;
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