import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] N = reader.readLine().split ("");
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final int zero = 0;
        System.out.println (
            Arrays.stream (N).allMatch (n -> n.equals (N[zero])) ? Yes : No);
        System.exit (0);
    }
}