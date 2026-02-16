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
        final String[] S = reader.readLine().split (" ");
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        System.out.println (
            String.join ("", String.valueOf (S[zero].charAt (zero)),
                         String.valueOf (S[one].charAt (zero)),
                         String.valueOf (S[two].charAt (zero))));
        System.exit (0);
    }
}