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
        final int zero = 0;
        final int four = 4;
        final char[][] S = new char[N][N];
        for (int i = zero; i < N; i++) {
            S[i] = sc.nextString().toCharArray();
        }
        final char[][] T = new char[N][N];
        for (int i = zero; i < N; i++) {
            T[i] = sc.nextString().toCharArray();
        }
        sc.close();
        int min = Integer.MAX_VALUE;
        char[][] curr = S;
        for (int k = zero; k < four; k++) {
            int cnt = zero;
            for (int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++) {
                    if (curr[i][j] != T[i][j]) {
                        cnt++;
                    }
                }
            }
            int cost = k + cnt;
            min = Math.min (min, cost);
            curr = rotate90 (curr, N);
        }
        System.out.println (min);
        System.exit (0);
    }
    private static char[][] rotate90 (char[][] grid, int N) {
        char[][] rotated = new char[N][N];
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                rotated[j][N - 1 - i] = grid[i][j];
            }
        }
        return rotated;
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
        public String nextString() throws IOException {
            byte c = read();
            while (Character.isWhitespace (c)) {
                c = read();
            }
            StringBuilder builder = new StringBuilder();
            builder.append ((char)c);
            c = read();
            while (!Character.isWhitespace (c)) {
                builder.append ((char)c);
                c = read();
            }
            return builder.toString();
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