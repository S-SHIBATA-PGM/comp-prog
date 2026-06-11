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
        final String YES = "YES";
        final String NO = "NO";
        final char cThree = '3';
        final int three = 3;
        final int zero = 0;
        System.out.println (
            String.valueOf (N).indexOf (cThree) >= zero || N % three == 0 ? YES
                                                                          : NO);
        System.exit (0);
    }
}