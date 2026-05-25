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
        reader.close();
        final int one = 1;
        final int two = 2;
        final int eight = 8;
        final int zero = 0;
        int world = Character.getNumericValue (S.charAt (zero));
        int stage = Character.getNumericValue (S.charAt (two));
        if (stage == eight) {
            world++;
            stage = one;
        } else {
            stage++;
        }
        System.out.printf ("%s%s%s\n", world, S.charAt (one), stage);
        System.exit (0);
    }
}