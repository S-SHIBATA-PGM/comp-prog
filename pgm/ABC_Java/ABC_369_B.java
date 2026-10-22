import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int N = sc.nextInt();
        final char cL = 'L';
        final int INF = 1_000_000_007;
        final int one = 1;
        final int hundred = 100;
        final int zero = 0;
        final int[] A = new int[N];
        final char[] S = new char[N];
        for (int i = zero; i < N; i++) {
            A[i] = sc.nextInt();
            S[i] = sc.nextChar();
        }
        sc.close();
        int[][] dp = new int[hundred + one][hundred + one];
        for (int i = one; i <= hundred; i++) {
            Arrays.fill (dp[i], INF);
        }
        int firstKey = A[zero];
        char firstHand = S[zero];
        if (firstHand == cL) {
            for (int r = one; r <= hundred; r++) {
                dp[firstKey][r] = zero;
            }
        } else {
            for (int l = one; l <= 100; l++) {
                dp[l][firstKey] = zero;
            }
        }
        for (int i = 1; i < N; i++) {
            int nextKey = A[i];
            char hand = S[i];
            int[][] nextDp = new int[hundred + one][hundred + one];
            for (int j = one; j <= hundred; j++) {
                Arrays.fill (nextDp[j], INF);
            }
            for (int l = one; l <= hundred; l++) {
                for (int r = one; r <= hundred; r++) {
                    if (dp[l][r] == INF)
                        continue;
                    if (hand == cL) {
                        int cost = Math.abs (l - nextKey);
                        nextDp[nextKey][r] =
                            Math.min (nextDp[nextKey][r], dp[l][r] + cost);
                    } else {
                        int cost = Math.abs (r - nextKey);
                        nextDp[l][nextKey] =
                            Math.min (nextDp[l][nextKey], dp[l][r] + cost);
                    }
                }
            }
            dp = nextDp;
        }
        int level = INF;
        for (int l = one; l <= hundred; l++) {
            for (int r = one; r <= hundred; r++) {
                level = Math.min (level, dp[l][r]);
            }
        }
        System.out.println (level);
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