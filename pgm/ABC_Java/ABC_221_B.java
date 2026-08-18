import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final String S = sc.nextString();
        final String T = sc.nextString();
        sc.close();
        final String Yes = "Yes";
        final String No = "No";
        String msg = No;
        if (S.equals (T)) {
            msg = Yes;
        }
        char[] arr = S.toCharArray();
        int len = arr.length;
        for (int i = 0; i < len - 1; i++) {
            char keep = arr[i];
            arr[i] = arr[i + 1];
            arr[i + 1] = keep;
            if (T.equals (String.valueOf (arr))) {
                msg = Yes;
                break;
            }
            arr[i + 1] = arr[i];
            arr[i] = keep;
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (msg);
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
    }
    // FastScanner end
}