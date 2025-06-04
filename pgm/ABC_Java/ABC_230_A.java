import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String AGC = "AGC";
        final int missing = 42;
        final int times = N >= missing ? N + 1 : N;
        System.out.println (AGC.concat (String.format ("%03d", times)));
        return;
    }
}