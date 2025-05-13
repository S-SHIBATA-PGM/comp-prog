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
        final int H = Integer.parseInt (arr[0]);
        final int W = Integer.parseInt (arr[1]);
        arr = reader.readLine().split (" ");
        final int one = 1;
        final int two = 2;
        final int four = 4;
        final int R = Integer.parseInt (arr[0]);
        final int C = Integer.parseInt (arr[1]);
        System.out.println (one < R && R < H && one < C && C < W ? four
                            : (R == one || R == H) && one < C && C < W
                                ? two + Math.min (one, H - one)
                            : one < R && R < H && (C == one || C == W)
                                ? two + Math.min (one, W - one)
                                : Math.min (one, H - one) +
                                      Math.min (one, W - one));
        return;
    }
}