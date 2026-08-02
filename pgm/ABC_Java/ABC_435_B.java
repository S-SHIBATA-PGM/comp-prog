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
        final int one = 1;
        final int zero = 0;
        final int[] A = new int[N];
        for (int i = zero; i < N; i++) {
            A[i] = sc.nextInt();
        }
        int[] sum = new int[N + 1];
        for (int i = zero; i < N; i++) {
            sum[i + one] = sum[i] + A[i];
        }
        int cnt = zero;
        for (int l = 0; l < N; l++) {
            for (int r = l; r < N; r++) {
                long S = sum[r + 1] - sum[l];
                boolean isValid = true;
                for (int i = l; i <= r; i++) {
                    if (S % A[i] == 0) {
                        isValid = false;
                        break;
                    }
                }
                if (isValid) {
                    cnt++;
                }
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (cnt);
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