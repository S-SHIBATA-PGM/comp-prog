import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int one = 1;
        final int zero = 0;
        final int K = Integer.parseInt (arr[one]);
        final String S = reader.readLine();
        System.out.println (S.substring (zero, K - 1)
                                .concat (S.substring (K - 1, K).toLowerCase())
                                .concat (S.substring (K)));
        return;
    }
}