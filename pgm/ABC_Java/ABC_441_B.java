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
        final int M = sc.nextInt();
        final String S = sc.nextString();
        final String T = sc.nextString();
        final int Q = sc.nextInt();
        final String Takahashi = "Takahashi";
        final String Aoki = "Aoki";
        final String Unknown = "Unknown";
        final char cA = 'a';
        final char cZ = 'z';
        final int one = 1;
        final int zero = 0;
        final int alp = cZ - cA + one;
        boolean[] tLanguage = new boolean[alp];
        boolean[] aLanguage = new boolean[alp];
        for (int i = zero; i < N; i++) {
            int idx = S.charAt (i) - cA;
            tLanguage[idx] = !tLanguage[idx];
        }
        for (int i = zero; i < M; i++) {
            int idx = T.charAt (i) - cA;
            aLanguage[idx] = !aLanguage[idx];
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        for (int i = zero; i < Q; i++) {
            String w = sc.nextString();
            int len = w.length();
            boolean doneFlg = false;
            boolean isTLanguage = true;
            boolean isALanguage = true;
            for (int j = zero; j < len; j++) {
                if (isTLanguage) {
                    if (tLanguage[w.charAt (j) - cA]) {
                        isTLanguage = true;
                    } else {
                        isTLanguage = false;
                    }
                }
                if (isALanguage) {
                    if (aLanguage[w.charAt (j) - cA]) {
                        isALanguage = true;
                    } else {
                        isALanguage = false;
                    }
                }
                if (!isTLanguage && !isALanguage) {
                    out.println (Unknown);
                    doneFlg = true;
                    break;
                }
            }
            if (!doneFlg) {
                if (isTLanguage && !isALanguage) {
                    out.println (Takahashi);
                } else if (!isTLanguage && isALanguage) {
                    out.println (Aoki);
                } else {
                    out.println (Unknown);
                }
            }
        }
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