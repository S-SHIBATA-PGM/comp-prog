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
        final String Of = "Of";
        final int one = 1;
        final int zero = 0;
        System.out.println (Of.concat (S.substring (zero, one).toLowerCase())
                                .concat (S.substring (one)));
        System.exit (0);
    }
}