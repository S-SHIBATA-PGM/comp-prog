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
        final int rgb = Integer.parseInt (reader.readLine().replace (" ", ""));
        final String YES = "YES";
        final String NO = "NO";
        final int four = 4;
        final int zero = 0;
        System.out.println (rgb % four == zero ? YES : NO);
        System.exit (0);
    }
}