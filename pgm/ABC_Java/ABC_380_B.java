import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final String S = sc.nextString();
        sc.close();
        final String space = " ";
        final char cBar = '|';
        final char cHyphen = '-';
        final int zero = 0;
        List<Integer> A = new ArrayList<>();
        int len = S.length();
        int cnt = zero;
        for (int i = zero; i < len; i++) {
            char c = S.charAt (i);
            if (c == cHyphen) {
                cnt++;
            } else if (c == cBar) {
                if (cnt > zero) {
                    A.add (cnt);
                    cnt = zero;
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i = zero; i < A.size(); i++) {
            if (i > zero) {
                sb.append (space);
            }
            sb.append (A.get (i));
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