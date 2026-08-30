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
        final int[] arr = sc.intArray (Q);
        sc.close();
        final String space = " ";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        int[] box = new int[N + one];
        int[] X = new int[Q];
        for (int i = zero; i < Q; i++) {
            int x = arr[i];
            if (x >= one) {
                box[x]++;
                X[i] = x;
            } else {
                int min = one;
                int cnt = box[one];
                for (int j = two; j <= N; j++) {
                    if (box[j] < cnt) {
                        cnt = box[j];
                        min = j;
                    }
                }
                box[min]++;
                X[i] = min;
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i = zero; i < Q; i++) {
            if (i > zero)
                sb.append (space);
            sb.append (X[i]);
        }
        System.out.println (sb.toString());
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