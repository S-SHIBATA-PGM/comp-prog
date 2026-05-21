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
        final String[] arr = reader.readLine().split (" ");
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final String[] OS = {"Ocelot", "Serval", "Lynx"};
        final int one = 1;
        final int zero = 0;
        final String X = arr[zero];
        final String Y = arr[one];
        System.out.println (Arrays.asList (OS).indexOf (Y) <=
                                    Arrays.asList (OS).indexOf (X)
                                ? Yes
                                : No);
        System.exit (0);
    }
}