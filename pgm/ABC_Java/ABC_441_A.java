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
        String[] arr = reader.readLine().split (" ");
        final int one = 1;
        final int zero = 0;
        final int P = Integer.parseInt (arr[zero]);
        final int Q = Integer.parseInt (arr[one]);
        arr = reader.readLine().split (" ");
        reader.close();
        final int X = Integer.parseInt (arr[zero]);
        final int Y = Integer.parseInt (arr[one]);
        final String Yes = "Yes";
        final String No = "No";
        final int hundred = 100;
        System.out.println (P <= X && X <= P + hundred - one && Q <= Y &&
                                    Y <= Q + hundred - one
                                ? Yes
                                : No);
        System.exit (0);
    }
}