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
        final int a = Integer.parseInt (reader.readLine());
        final int b = Integer.parseInt (reader.readLine());
        final int h = Integer.parseInt (reader.readLine());
        final int two = 2;
        System.out.println ((a + b) * h / two);
        System.exit (0);
    }
}