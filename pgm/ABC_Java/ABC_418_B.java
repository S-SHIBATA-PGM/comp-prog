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
        final char t = 't';
        final int one = 1;
        final int two = 2;
        final int three = 3;
        final int zero = 0;
        double max = 0.0;
        List<Integer> list = new ArrayList<>();
        int length = S.length();
        for (int i = zero; i < length; i++) {
            if (S.charAt (i) == t) {
                list.add (i);
            }
        }
        if (list.size() < three) {
            System.out.println (max);
            return;
        }
        int size = list.size();
        for (int l = zero; l < size; l++) {
            for (int r = l + two; r < size; r++) {
                int left = list.get (l);
                int right = list.get (r);
                int len = right - left + one;
                int cnt = r - l + one;
                if (len >= three && cnt >= three) {
                    double rate = (double)(cnt - two) / (len - two);
                    max = Math.max (max, rate);
                }
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (max);
        sc.close();
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
    }
    // FastScanner end
}