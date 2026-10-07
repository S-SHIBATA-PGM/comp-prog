import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    static class Division {
        private final NavigableMap<Integer, Integer> bounds = new TreeMap<>();
        public void addRange (int min, int max) {
            bounds.put (min, max);
        }
        public boolean contains (int rating) {
            Map.Entry<Integer, Integer> entry = bounds.floorEntry (rating);
            if (entry == null) {
                return false;
            }
            int max = entry.getValue();
            return rating <= max;
        }
    }
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int N = sc.nextInt();
        final int R = sc.nextInt();
        final int one = 1;
        final int oneThousandTwoHundred = 1200;
        final int oneThousandSixHundred = 1600;
        final int twoThousandThreeHundredNinetyNine = 2399;
        final int twoThousandSevenHundredNinetyNine = 2799;
        Division div1 = new Division();
        div1.addRange (oneThousandSixHundred,
                       twoThousandSevenHundredNinetyNine);
        Division div2 = new Division();
        div2.addRange (oneThousandTwoHundred,
                       twoThousandThreeHundredNinetyNine);
        int rating = R;
        for (int i = 0; i < N; i++) {
            int type = sc.nextInt();
            int perf = sc.nextInt();
            Division curr = (type == one) ? div1 : div2;
            if (curr.contains (rating)) {
                rating += perf;
            }
        }
        sc.close();
        System.out.println (rating);
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