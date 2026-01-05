import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int X = Integer.parseInt (reader.readLine());
        final int A = Integer.parseInt (reader.readLine());
        final int B = Integer.parseInt (reader.readLine());
        System.out.println ((X - A) % B);
        System.exit (0);
    }
}