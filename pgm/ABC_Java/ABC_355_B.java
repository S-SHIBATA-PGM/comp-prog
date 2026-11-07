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
        final int M = sc.nextInt();
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int twoHundred = 200;
        final int[] A = sc.intArray (N);
        final boolean[] isA = new boolean[twoHundred + one];
        for (int i = 0; i < N; i++) {
            isA[A[i]] = true;
        }
        final int[] B = sc.intArray (M);
        sc.close();
        int[] C = new int[N + M];
        for (int i = 0; i < N; i++) {
            C[i] = A[i];
        }
        for (int i = 0; i < M; i++) {
            C[N + i] = B[i];
        }
        Arrays.sort (C);
        boolean hasConsecutiveA = false;
        for (int i = 0; i < C.length - 1; i++) {
            if (isA[C[i]] && isA[C[i + 1]]) {
                hasConsecutiveA = true;
                break;
            }
        }
        System.out.println (hasConsecutiveA ? Yes : No);
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
        public int[] intArray (int n) throws IOException {
            int arr[] = new int[n];
            for (int i = 0; i < n; i++) {
                arr[i] = nextInt();
            }
            return arr;
        }
    }
    // FastScanner end
}