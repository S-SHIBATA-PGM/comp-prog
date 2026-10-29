import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int xA = sc.nextInt();
        final int yA = sc.nextInt();
        final int xB = sc.nextInt();
        final int yB = sc.nextInt();
        final int xC = sc.nextInt();
        final int yC = sc.nextInt();
        sc.close();
        final String Yes = "Yes";
        final String No = "No";
        final int ab2 = (xB - xA) * (xB - xA) + (yB - yA) * (yB - yA);
        final int bc2 = (xC - xB) * (xC - xB) + (yC - yB) * (yC - yB);
        final int ca2 = (xA - xC) * (xA - xC) + (yA - yC) * (yA - yC);
        System.out.println (
            ab2 + bc2 == ca2 || bc2 + ca2 == ab2 || ca2 + ab2 == bc2 ? Yes
                                                                     : No);
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