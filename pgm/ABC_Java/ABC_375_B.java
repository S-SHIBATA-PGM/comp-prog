import java.io.*;
import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int N = sc.nextInt();
        final int one = 1;
        final int two = 2;
        final int five = 5;
        final int twenty = 20;
        final int zero = 0;
        final long[] X = new long[N + two];
        final long[] Y = new long[N + two];
        X[zero] = zero;
        Y[zero] = zero;
        X[N + one] = zero;
        Y[N + one] = zero;
        for (int i = one; i <= N; i++) {
            X[i] = sc.nextLong();
            Y[i] = sc.nextLong();
        }
        sc.close();
        BigDecimal cost = BigDecimal.ZERO;
        for (int i = zero; i <= N; i++) {
            long dx = X[i] - X[i + one];
            long dy = Y[i] - Y[i + one];
            cost = cost.add (bigSqrt (
                BigDecimal.valueOf ((dx * dx) + (dy * dy)), twenty + five));
        }
        System.out.println (
            cost.setScale (twenty, RoundingMode.DOWN).toPlainString());
        System.exit (0);
    }
    private static BigDecimal bigSqrt (BigDecimal value, int scale) {
        if (value.compareTo (BigDecimal.ZERO) == 0) {
            return BigDecimal.ZERO.setScale (scale);
        }
        int workingScale = scale + 10;
        BigDecimal two = new BigDecimal ("2");
        BigDecimal x1 = new BigDecimal (Math.sqrt (value.doubleValue()),
                                        java.math.MathContext.DECIMAL64);
        BigDecimal x0;
        while (true) {
            x0 = x1;
            x1 = value.divide (x0, workingScale, RoundingMode.HALF_UP)
                     .add (x0)
                     .divide (two, workingScale, RoundingMode.HALF_UP);
            if (x1.subtract (x0).abs().compareTo (
                    BigDecimal.valueOf (1).movePointLeft (scale)) < 0) {
                break;
            }
        }
        return x1.setScale (scale, RoundingMode.HALF_UP);
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
        public long nextLong() throws IOException {
            long ret = 0;
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