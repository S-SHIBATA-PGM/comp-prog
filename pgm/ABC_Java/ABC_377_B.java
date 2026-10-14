import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        FastScanner sc = new FastScanner();
        final char cSharp = '#';
        final int eight = 8;
        final int zero = 0;
        int size = eight;
        char[][] board = new char[size][size];
        for (int i = zero; i < size; i++) {
            board[i] = sc.nextString().toCharArray();
        }
        sc.close();
        boolean[] hasPieceInRow = new boolean[size];
        boolean[] hasPieceInCol = new boolean[size];
        for (int i = zero; i < size; i++) {
            for (int j = zero; j < size; j++) {
                if (board[i][j] == cSharp) {
                    hasPieceInRow[i] = true;
                    hasPieceInCol[j] = true;
                }
            }
        }
        int cnt = zero;
        for (int i = zero; i < size; i++) {
            for (int j = zero; j < size; j++) {
                if (board[i][j] == '.' && !hasPieceInRow[i] &&
                    !hasPieceInCol[j]) {
                    cnt++;
                }
            }
        }
        System.out.println (cnt);
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