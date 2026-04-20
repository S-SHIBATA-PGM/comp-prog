import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        reader.close();
        final int fiveThousand = 5000;
        // (N * (1 + N)) / 2 * 10000 / N
        // (1 + N) / 2 * 10000
        // (1 + N) * 5000
        System.out.println ((1 + N) * fiveThousand);
        System.exit (0);
    }
}