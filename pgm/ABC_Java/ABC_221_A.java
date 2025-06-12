import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int[] AB = Arrays.stream (reader.readLine().split (" "))
                             .mapToInt (Integer::parseInt)
                             .toArray();
        final int thirtyTwo = 32;
        final int A = AB[0];
        final int B = AB[1];
        System.out.println ((int)Math.pow (thirtyTwo, A - B));
        return;
    }
}