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
        final String S = reader.readLine();
        reader.close();
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        System.out.println (S.substring (zero, S.length() / two)
                                .concat (S.substring (S.length() / two + one)));
        System.exit (0);
    }
}