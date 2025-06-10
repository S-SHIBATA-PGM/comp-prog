import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int X = Integer.parseInt (reader.readLine());
        final int divisor = 100;
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (X != 0 && X % divisor == 0 ? Yes : No);
        return;
    }
}