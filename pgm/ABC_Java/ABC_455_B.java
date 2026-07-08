import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int zero = 0;
        final int H = sc.nextInt();
        final int W = sc.nextInt();
        char[][] grid = new char[H][W];
        for (int y = zero; y < H; y++) {
            grid[y] = sc.nextString().toCharArray();
        }
        int total = zero;
        for (int y1 = zero; y1 < H; y1++) {
            for (int y2 = y1; y2 < H; y2++) {
                for (int x1 = zero; x1 < W; x1++) {
                    for (int x2 = x1; x2 < W; x2++) {
                        boolean isSymmetric = true;
                        for (int x = x1; x <= x2; x++) {
                            for (int y = y1; y <= y2; y++) {
                                int oppY = y2 - (y - y1);
                                int oppX = x2 - (x - x1);
                                if (grid[y][x] != grid[oppY][oppX]) {
                                    isSymmetric = false;
                                    break;
                                }
                            }
                            if (!isSymmetric)
                                break;
                        }
                        if (isSymmetric) {
                            total++;
                        }
                    }
                }
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (total);
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
        public FastScanner (String file_name) throws IOException {
            din = new DataInputStream (new FileInputStream (file_name));
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
        public char nextChar() throws IOException {
            byte c = read();
            while (Character.isWhitespace (c)) {
                c = read();
            }
            return (char)c;
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
        public double nextDouble() throws IOException {
            double ret = 0, div = 1;
            byte c = read();
            while (c <= ' ')
                c = read();
            boolean neg = (c == '-');
            if (neg)
                c = read();
            do {
                ret = ret * 10 + c - '0';
            } while ((c = read()) >= '0' && c <= '9');
            if (c == '.') {
                while ((c = read()) >= '0' && c <= '9') {
                    ret += (c - '0') / (div *= 10);
                }
            }
            if (neg)
                return -ret;
            return ret;
        }
        public char[] charArray (int n) throws IOException {
            char arr[] = new char[n];
            for (int i = 0; i < n; i++)
                arr[i] = nextChar();
            return arr;
        }
        public String[] stringArray (int n) throws IOException {
            String arr[] = new String[n];
            for (int i = 0; i < n; i++)
                arr[i] = nextString();
            return arr;
        }
        public int[] intArray (int n) throws IOException {
            int arr[] = new int[n];
            for (int i = 0; i < n; i++) {
                arr[i] = nextInt();
            }
            return arr;
        }
        public long[] longArray (int n) throws IOException {
            long arr[] = new long[n];
            for (int i = 0; i < n; i++) {
                arr[i] = nextLong();
            }
            return arr;
        }
        public double[] doubleArray (int n) throws IOException {
            double arr[] = new double[n];
            for (int i = 0; i < n; i++)
                arr[i] = nextDouble();
            return arr;
        }
    }
    // FastScanner end
}