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
        final int A = Integer.parseInt (reader.readLine());
        final int two = 2;
        System.out.println ((int)Math.pow (A / two, two));
        System.exit (0);
    }
}