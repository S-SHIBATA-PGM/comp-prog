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
        final int R = Integer.parseInt (reader.readLine());
        final int G = Integer.parseInt (reader.readLine());
        System.out.println (2 * G - R);
        System.exit (0);
    }
}