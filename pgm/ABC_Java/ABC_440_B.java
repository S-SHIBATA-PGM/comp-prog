import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    static class Horse implements Comparable<Horse> {
        int id;
        int time;
        Horse (int id, int time) {
            this.id = id;
            this.time = time;
        }
        @Override
        public int compareTo (Horse other) {
            return Integer.compare (this.time, other.time);
        }
    }
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final int N = sc.nextInt();
        final String space = " ";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        Horse[] horse = new Horse[N];
        for (int i = zero; i < N; i++) {
            horse[i] = new Horse (i + one, sc.nextInt());
        }
        Arrays.sort (horse);
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (String.join (space, String.valueOf (horse[zero].id),
                                  String.valueOf (horse[one].id),
                                  String.valueOf (horse[two].id)));
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