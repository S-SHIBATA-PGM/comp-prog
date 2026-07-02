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
        final String East = "East";
        final String West = "West";
        final char cE = 'E';
        final long cnt = S.chars().filter (c -> c == cE).count();
        System.out.println (cnt > S.length() - cnt ? East : West);
        System.exit (0);
    }
}