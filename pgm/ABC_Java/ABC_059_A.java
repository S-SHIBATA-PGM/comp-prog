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
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final String s1 = arr[zero];
        final String s2 = arr[one];
        final String s3 = arr[two];
        System.out.println (
            String.valueOf (s1.charAt (zero))
                .toUpperCase()
                .concat (String.valueOf (s2.charAt (zero)).toUpperCase())
                .concat (String.valueOf (s3.charAt (zero)).toUpperCase()));
        System.exit (0);
    }
}