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
        final long N = Long.parseLong (reader.readLine());
        final String Yes = "Yes";
        final String No = "No";
        final int ten = 10;
        final int zero = 0;
        final long original = N;
        long number = original;
        long reversed = zero;
        while (number != zero) {
            reversed = reversed * ten + number % ten;
            number /= ten;
        }
        System.out.println (original == reversed ? Yes : No);
        System.exit (0);
    }
}