import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        final String Yes = "Yes";
        final String No = "No";
        final String R = "R";
        final String M = "M";
        System.out.println (S.indexOf (R) < S.indexOf (M) ? Yes : No);
        return;
    }
}