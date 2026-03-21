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
        final long a = Long.parseLong (reader.readLine());
        final long b = Long.parseLong (reader.readLine());
        final long n = Long.parseLong (reader.readLine());
        final long one = 1L;
        final long lcm = lcm (a, b);
        System.out.println ((lcm + n - one) / lcm * lcm);
        System.exit (0);
    }

    public static long gcd (long a, long b) {
        long result = a;
        long k = 0;
        long n = b;
        do {
            k = result % n;
            result = n;
            n = k;
        } while (k != 0);
        return result;
    }

    public static long lcm (long a, long b) {
        long g;
        g = gcd (a, b);
        return a * (b / g);
    }
}