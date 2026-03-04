import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final char[] ABC = reader.readLine().toCharArray();
        final int go = 5;
        final int shichi = 7;
        final String YES = "YES";
        final String NO = "NO";
        Arrays.sort (ABC);
        System.out.println (new String (ABC).trim().equals (
                                String.format ("%d%d%d", go, go, shichi))
                                ? YES
                                : NO);
        System.exit (0);
    }
}