import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int one = 1;
        final int zero = 0;
        final String blank = "";
        final String space = " ";
        final String[] arr = reader.readLine().split (space);
        final int SA = Arrays.stream (arr[zero].split (blank))
                           .mapToInt (Integer::parseInt)
                           .reduce (zero, (pre, cur) -> pre + cur);
        final int SB = Arrays.stream (arr[one].split (blank))
                           .mapToInt (Integer::parseInt)
                           .reduce (zero, (pre, cur) -> pre + cur);
        System.out.println (Math.max (SA, SB));
        return;
    }
}