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
        final String T = "T";
        final String YES = "YES";
        final String NO = "NO";
        System.out.println (reader.readLine().endsWith (T) ? YES : NO);
        System.exit (0);
    }
}