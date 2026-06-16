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
        reader.close();
        final int one = 1;
        final int fourHundred = 400;
        final int zero = 0;
        System.out.println (fourHundred % A == zero ? fourHundred / A : -one);
        System.exit (0);
    }
}