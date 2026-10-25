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
        final String blank = "";
        final char cAsterisk = '*';
        final int one = 1;
        final int zero = 0;
        String[] S = new String[N];
        int max = zero;
        for (int i = zero; i < N; i++) {
            S[i] = sc.nextString();
            max = Math.max (max, S[i].length());
        }
        sc.close();
        char[][] grid = new char[N][max];
        for (int i = 0; i < N; i++) {
            Arrays.fill (grid[i], cAsterisk);
        }
        for (int i = zero; i < N; i++) {
            for (int j = zero; j < S[i].length(); j++) {
                grid[N - one - i][j] = S[i].charAt (j);
            }
        }
        for (int j = zero; j < max; j++) {
            StringBuilder sb = new StringBuilder();
            for (int i = zero; i < N; i++) {
                sb.append (grid[i][j]);
            }
            String s = sb.toString();
            int lastValidIndex = -one;
            for (int i = sb.length() - one; i >= zero; i--) {
                if (s.charAt (i) != cAsterisk) {
                    lastValidIndex = i;
                    break;
                }
            }
            if (lastValidIndex != -one) {
                System.out.println (s.substring (zero, lastValidIndex + one));
            } else {
                System.out.println (blank);
            }
        }
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
    }
    // FastScanner end
}