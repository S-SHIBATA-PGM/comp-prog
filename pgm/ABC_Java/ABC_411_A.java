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
        final String P = reader.readLine();
        final int L = Integer.parseInt (reader.readLine());
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (P.length() >= L ? Yes : No);
        System.exit (0);
    }
}