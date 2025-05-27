import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    private static int f (int x) {
        return (int)Math.pow (x, 2) + 2 * x + 3;
    }

    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int t = Integer.parseInt (reader.readLine());
        System.out.println (f (f (f (t) + t) + f (f (t))));
        return;
    }
}