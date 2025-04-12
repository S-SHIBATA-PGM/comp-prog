import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final String Yes = "Yes";
        final String No = "No";
        final int X, Y;
        X = Integer.parseInt (arr[0]);
        Y = Integer.parseInt (arr[1]);
        System.out.println (X < Y && Y - X <= 2    ? Yes
                            : X > Y && Y - X >= -3 ? Yes
                                                   : No);
        return;
    }
}