import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        final int one = 1;
        final int zero = 0;
        final char A = 'A';
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final char X = reader.readLine().charAt (zero);
        reader.close();
        System.out.println (X - A + one);
        System.exit (0);
    }
}