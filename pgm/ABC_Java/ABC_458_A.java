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
        final int N = Integer.parseInt (reader.readLine());
        reader.close();
        System.out.println (S.substring (N, S.length() - N));
        System.exit (0);
    }
}