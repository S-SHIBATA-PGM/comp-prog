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
        final int one = 1;
        final int five = 5;
        final int i = (N - one) / five;
        final int j = (N - one) % five;
        System.out.println (String.valueOf (S.charAt (i)) + S.charAt (j));
        System.exit (0);
    }
}