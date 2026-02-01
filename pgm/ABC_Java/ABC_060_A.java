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
        final String YES = "YES";
        final String NO = "NO";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final String A = arr[zero];
        final String B = arr[one];
        final String C = arr[two];
        System.out.println (A.charAt (A.length() - one) == B.charAt (zero) &&
                                    B.charAt (B.length() - one) ==
                                        C.charAt (zero)
                                ? YES
                                : NO);
        System.exit (0);
    }
}