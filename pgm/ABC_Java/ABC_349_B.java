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
        sc.close();
        final String Yes = "Yes";
        final String No = "No";
        final char cA = 'a';
        final char cZ = 'z';
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        int len = S.length();
        int[] charCnt = new int[cZ - cA + one];
        for (int i = zero; i < len; i++) {
            char c = S.charAt (i);
            charCnt[c - cA]++;
        }
        int[] freqCnt = new int[len + one];
        for (int i = zero; i < cZ - cA + one; i++) {
            int cnt = charCnt[i];
            if (cnt > zero) {
                freqCnt[cnt]++;
            }
        }
        boolean isGood = true;
        for (int i = one; i <= len; i++) {
            if (freqCnt[i] != zero && freqCnt[i] != two) {
                isGood = false;
                break;
            }
        }
        System.out.println (isGood ? Yes : No);
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
    }
    // FastScanner end
}