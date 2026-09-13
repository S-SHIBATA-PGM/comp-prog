import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int two = 2;
        final int three = 3;
        final int seven = 7;
        final int fourteen = 14;
        final int zero = 0;
        final int[] cnt = new int[fourteen];
        FastScanner sc = new FastScanner();
        for (int i = zero; i < seven; i++) {
            final int A = sc.nextInt();
            cnt[A]++;
        }
        sc.close();
        boolean canMakeFullHouse = false;
        for (int i = one; i < fourteen; i++) {
            for (int j = one; j < fourteen; j++) {
                if (i == j)
                    continue;
                if (cnt[i] >= three && cnt[j] >= two) {
                    canMakeFullHouse = true;
                    break;
                }
            }
            if (canMakeFullHouse)
                break;
        }
        System.out.println (canMakeFullHouse ? Yes : No);
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
    }
    // FastScanner end
}