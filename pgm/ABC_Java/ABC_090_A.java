import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String c1 = reader.readLine();
        final String c2 = reader.readLine();
        final String c3 = reader.readLine();
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        System.out.println (String.format ("%c%c%c", c1.charAt (zero),
                                           c2.charAt (one), c3.charAt (two)));
        System.exit (0);
    }
}