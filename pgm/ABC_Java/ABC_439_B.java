import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static final String Yes = "Yes";
    public static final String No = "No";
    public static final int one = 1;
    public static final int ten = 10;
    public static final int zero = 0;
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int N = Integer.parseInt (reader.readLine());
        Set<Integer> set = new HashSet<>();
        while (N != one && !set.contains (N)) {
            set.add (N);
            N = getNext (N);
        }
        PrintWriter out =
            new PrintWriter (new BufferedOutputStream (System.out));
        out.println (N == one ? Yes : No);
        out.flush();
        System.exit (0);
    }
    private static int getNext (int n) {
        int sum = zero;
        while (n > zero) {
            int digit = n % ten;
            sum += digit * digit;
            n /= ten;
        }
        return sum;
    }
}