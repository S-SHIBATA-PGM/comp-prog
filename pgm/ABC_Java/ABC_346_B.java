import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        int W = sc.nextInt();
        int B = sc.nextInt();
        sc.close();
        final String base = "wbwbwwbwbwbw";
        final String Yes = "Yes";
        final String No = "No";
        final char cW = 'w';
        final int zero = 0;
        final int twenty = 20;
        StringBuilder sb = new StringBuilder();
        for (int i = zero; i < twenty; i++) {
            sb.append (base);
        }
        String S = sb.toString();
        int len = W + B;
        for (int start = 0; start < base.length(); start++) {
            int wCnt = zero;
            int bCnt = zero;
            for (int i = zero; i < len; i++) {
                char c = S.charAt (start + i);
                if (c == cW) {
                    wCnt++;
                } else {
                    bCnt++;
                }
            }
            if (wCnt == W && bCnt == B) {
                System.out.println (Yes);
                return;
            }
        }
        System.out.println (No);
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