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
        final String[] s = reader.readLine().split (" ");
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        System.out.println (
            String.join ("", String.valueOf (s[zero].charAt (zero)),
                         String.valueOf (s[one].charAt (zero)),
                         String.valueOf (s[two].charAt (zero))));
        System.exit (0);
    }
}