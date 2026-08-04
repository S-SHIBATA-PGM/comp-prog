import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final String S = sc.next();
        final String T = sc.next();
        final int one = 1;
        final int zero = 0;
        char s1 = S.charAt (zero);
        char s2 = S.charAt (one);
        char t1 = T.charAt (zero);
        char t2 = T.charAt (one);
        int distS = getDistance (s1, s2);
        int distT = getDistance (t1, t2);
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        if (distS == distT) {
            out.println ("Yes");
        } else {
            out.println ("No");
        }
        out.flush();
        System.exit (0);
    }
    private static int getDistance (char p1, char p2) {
        int idx1 = p1 - 'A';
        int idx2 = p2 - 'A';
        int diff = Math.abs (idx1 - idx2);
        return Math.min (diff, 5 - diff);
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
        public String next() throws IOException {
            byte[] buf = new byte[64];
            int cnt = 0, c;
            while ((c = read()) <= ' ')
                ;
            do {
                buf[cnt++] = (byte)c;
            } while ((c = read()) > ' ');
            return new String (buf, 0, cnt);
        }
    }
    // FastScanner end
}