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
        int Q = Integer.parseInt (reader.readLine());
        final String ABC = "ABC";
        final String chokudai = "chokudai";
        final int one = 1;
        System.out.println (Q == one ? ABC : chokudai);
        System.exit (0);
    }
}