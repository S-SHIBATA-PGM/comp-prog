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
        final String s = reader.readLine();
        final int i = Integer.parseInt (reader.readLine());
        final int one = 1;
        System.out.println (s.charAt (i - one));
        System.exit (0);
    }
}