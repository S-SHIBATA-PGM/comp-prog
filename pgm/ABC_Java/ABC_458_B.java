import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        reader.close();
        final String sp = " ";
        final int one = 1;
        final int zero = 0;
        final int H = Integer.parseInt (arr[zero]);
        final int W = Integer.parseInt (arr[one]);
        List<List<Integer>> data =
            Stream
                .generate (
                    () -> new ArrayList<> (Collections.nCopies (W, zero)))
                .limit (H)
                .collect (Collectors.toList());
        // 下、右、上、左
        final int drn = 4;
        final int[] dy = {1, 0, -1, 0};
        final int[] dx = {0, 1, 0, -1};
        for (int y = zero; y < H; y++) {
            for (int x = zero; x < W; x++) {
                int cnt = zero;
                for (int k = 0; k < drn; k++) {
                    int ny = y + dy[k];
                    int nx = x + dx[k];
                    if (ny < 0 || H <= ny || nx < 0 || W <= nx)
                        continue;
                    cnt++;
                }
                data.get (y).set (x, cnt);
            }
            String elm = data.get (y)
                             .stream()
                             .map (String::valueOf)
                             .collect (Collectors.joining (sp));
            System.out.println (elm);
        }
        System.exit (0);
    }
}