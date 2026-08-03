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
        final int M = sc.nextInt();
        final BigDecimal[] cnt = new BigDecimal[M];
        final BigDecimal[] size = new BigDecimal[M];
        final int one = 1;
        final int twenty = 20;
        final int zero = 0;
        for (int i = zero; i < M; i++) {
            size[i] = BigDecimal.ZERO;
            cnt[i] = BigDecimal.ZERO;
        }
        for (int i = zero; i < N; i++) {
            final int A = sc.nextInt();
            final int B = sc.nextInt();
            size[A - one] = size[A - one].add (BigDecimal.valueOf (B));
            cnt[A - one] = cnt[A - one].add (BigDecimal.ONE);
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        for (int i = zero; i < M; i++) {
            out.println (size[i].divide (cnt[i], twenty, RoundingMode.DOWN));
        }
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