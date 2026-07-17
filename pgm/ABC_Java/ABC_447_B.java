import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        String S = sc.nextString();
        final char cA = 'a';
        final char cZ = 'z';
        final int one = 1;
        final int zero = 0;
        final int cnt = cZ - cA + one;
        int[] count = new int[cnt];
        int n = S.length();
        for (int i = zero; i < n; i++) {
            int idx = S.charAt (i) - cA;
            count[idx]++;
        }
        int max = zero;
        for (int i = zero; i < cnt; i++) {
            if (count[i] > max) {
                max = count[i];
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i = zero; i < n; i++) {
            char c = S.charAt (i);
            int idx = c - cA;
            if (count[idx] < max) {
                sb.append (c);
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (sb.toString());
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
    }
    // FastScanner end
}