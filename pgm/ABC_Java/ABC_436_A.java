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
        int N = Integer.parseInt (reader.readLine());
        String S = reader.readLine();
        reader.close();
        final String o = "o";
        System.out.println (o.repeat (N - S.length()).concat (S));
        System.exit (0);
    }
}