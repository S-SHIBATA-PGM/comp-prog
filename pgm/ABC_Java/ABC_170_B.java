// C + T = X
// 2 * C + 4 * T = Y
// T = X - C
// 2 * C + 4 * (X - C) = Y
// - 2 * C = Y - 4 * X
// C = 2 * X - Y / 2
// T = -X + Y / 2

import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        int X, Y;
        X = Integer.parseInt (arr[0]);
        Y = Integer.parseInt (arr[1]);
        int C, T;
        C = 2 * X - Y / 2;
        T = -X + Y / 2;
        System.out.println (0 <= C && 0 <= T && 2 * C + 4 * T == Y && C + T == X
                                ? "Yes"
                                : "No");
        return;
    }
}