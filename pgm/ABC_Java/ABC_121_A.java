import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] HW = reader.readLine().split (" ");
        final int one = 1;
        final int zero = 0;
        final int H = Integer.parseInt (HW[zero]);
        final int W = Integer.parseInt (HW[one]);
        final String[] hw = reader.readLine().split (" ");
        final int h = Integer.parseInt (hw[zero]);
        final int w = Integer.parseInt (hw[one]);
        System.out.println (H * W - h * W - w * H + h * w);
        return;
    }
}