import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int one = 1;
        final int two = 2;
        final int three = 3;
        final int four = 4;
        final int five = 5;
        final int six = 6;
        final int zero = 0;
        final int pattern = six * six * six;
        int[][] dice = new int[three][six];
        for (int i = zero; i < three; i++) {
            StringTokenizer st = new StringTokenizer (reader.readLine());
            for (int j = zero; j < six; j++) {
                dice[i][j] = Integer.parseInt (st.nextToken());
            }
        }
        reader.close();
        int cnt = zero;
        for (int i = zero; i < six; i++) {
            for (int j = zero; j < six; j++) {
                for (int k = zero; k < six; k++) {
                    int[] current = {dice[zero][i], dice[one][j], dice[two][k]};
                    Arrays.sort (current);
                    if (current[zero] == four && current[one] == five &&
                        current[two] == six) {
                        cnt++;
                    }
                }
            }
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.printf ("%.10f\n", (double)cnt / pattern);
        out.flush();
        System.exit (0);
    }
}