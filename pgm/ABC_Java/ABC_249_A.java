import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int[] arr = Arrays.stream (reader.readLine().split (" "))
                        .mapToInt (Integer::parseInt)
                        .toArray();
        final String Takahashi = "Takahashi";
        final String Aoki = "Aoki";
        final String Draw = "Draw";
        final int A = arr[0];
        final int B = arr[1];
        final int C = arr[2];
        final int D = arr[3];
        final int E = arr[4];
        final int F = arr[5];
        final int X = arr[6];
        final Integer takahashiDistance =
            B * A * (X / (A + C)) + B * Math.min (A, X % (A + C));
        final Integer aokiDistance =
            E * D * (X / (D + F)) + E * Math.min (D, X % (D + F));
        if (takahashiDistance.compareTo (aokiDistance) > 0) {
            System.out.println (Takahashi);
        } else if (takahashiDistance.compareTo (aokiDistance) < 0) {
            System.out.println (Aoki);
        } else {
            System.out.println (Draw);
        }
        return;
    }
}