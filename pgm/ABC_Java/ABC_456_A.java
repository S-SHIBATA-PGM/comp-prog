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
        final int X = Integer.parseInt (reader.readLine());
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final int one = 1;
        final int three = 3;
        final int six = 6;
        System.out.println (one * three <= X && X <= six * three ? Yes : No);
        System.exit (0);
    }
}