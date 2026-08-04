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
        final int[] A = new int[N];
        final int one = 1;
        final int zero = 0;
        for (int i = zero; i < N; i++) {
            A[i] = sc.nextInt();
        }
        int[] tall = new int[N];
        Deque<Integer> deq = new ArrayDeque<>();
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        for (int i = 0; i < N; i++) {
            while (!deq.isEmpty() && A[deq.peek()] <= A[i]) {
                deq.pop();
            }
            if (deq.isEmpty()) {
                tall[i] = -one;
            } else {
                tall[i] = deq.peek() + 1; // 1-indexed に変換
            }
            deq.push (i);
            out.println (tall[i]);
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