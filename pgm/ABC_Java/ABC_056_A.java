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
        final String[] arr = reader.readLine().split (" ");
        final String H = "H";
        final String D = "D";
        final int one = 1;
        final int zero = 0;
        final String a = arr[zero];
        final String b = arr[one];
        System.out.println (H.equals (a) ? b : H.equals (b) ? D : H);
        System.exit (0);
    }
}