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
        final int[] A = sc.intArray (N);
        sc.close();
        final String Yes = "Yes";
        final String No = "No";
        final String space = " ";
        final int one = 1;
        final int zero = 0;
        boolean[] P = new boolean[N + one];
        Arrays.fill (P, one, P.length, true);
        boolean isFound = true;
        for (int i = zero; i < N; i++) {
            if (A[i] != -one) {
                if (!P[A[i]]) {
                    isFound = !isFound;
                    break;
                }
                P[A[i]] = !P[A[i]];
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        if (!isFound) {
            out.println (No);
        } else {
            out.println (Yes);
            for (int i = zero; i < N; i++) {
                if (i > zero) {
                    out.print (space);
                }
                if (A[i] != -one) {
                    out.print (A[i]);
                } else {
                    for (int j = one; j <= N; j++) {
                        if (P[j]) {
                            P[j] = !P[j];
                            out.print (j);
                            break;
                        }
                    }
                }
            }
            out.println();
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
        public int[] intArray (int n) throws IOException {
            int arr[] = new int[n];
            for (int i = 0; i < n; i++) {
                arr[i] = nextInt();
            }
            return arr;
        }
    }
    // FastScanner end
}