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
        final int N = Integer.parseInt (reader.readLine());
        final int fifteen = 15;
        final int twoHundred = 200;
        final int eightHundred = 800;
        System.out.println (eightHundred * N - twoHundred * (N / fifteen));
        System.exit (0);
    }
}