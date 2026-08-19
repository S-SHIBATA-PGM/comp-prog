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
        final String[] S = sc.stringArray (N);
        sc.close();
        final String space = " ";
        final char cZero = '0';
        final char cOne = '1';
        final int zero = 0;
        int[] score = new int[N];
        for (int j = zero; j < M; j++) {
            int cnt0 = zero;
            for (int i = zero; i < N; i++) {
                if (S[i].charAt (j) == cZero) {
                    cnt0++;
                }
            }
            int cnt1 = N - cnt0;
            for (int i = zero; i < N; i++) {
                char vote = S[i].charAt (j);
                if (cnt0 == zero || cnt1 == zero) {
                    score[i]++;
                } else if (cnt0 < cnt1 && vote == cZero) {
                    score[i]++;
                } else if (cnt1 < cnt0 && vote == cOne) {
                    score[i]++;
                }
            }
        }
        int max = zero;
        for (int s : score) {
            max = Math.max (max, s);
        }
        List<String> top = new ArrayList<>();
        for (int i = 0; i < N; i++) {
            if (score[i] == max) {
                top.add (String.valueOf (i + 1));
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (String.join (space, top));
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
        public String[] stringArray (int n) throws IOException {
            String arr[] = new String[n];
            for (int i = 0; i < n; i++)
                arr[i] = nextString();
            return arr;
        }
    }
    // FastScanner end
}