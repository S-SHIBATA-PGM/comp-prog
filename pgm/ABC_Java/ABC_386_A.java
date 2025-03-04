import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        final String Yes = "Yes";
        final String No = "No";
        int A, B, C, D;
        A = Integer.parseInt (arr[0]);
        B = Integer.parseInt (arr[1]);
        C = Integer.parseInt (arr[2]);
        D = Integer.parseInt (arr[3]);
        int[] cards = new int[13];
        cards[A - 1]++;
        cards[B - 1]++;
        cards[C - 1]++;
        cards[D - 1]++;
        int threeCards = 0;
        int pairs = 0;
        for (int i = 0; i < cards.length; i++) {
            if (cards[i] == 3) {
                threeCards++;
                break;
            } else if (cards[i] == 2) {
                pairs++;
            }
        }
        System.out.println (threeCards == 1 ? Yes : pairs == 2 ? Yes : No);
        return;
    }
}