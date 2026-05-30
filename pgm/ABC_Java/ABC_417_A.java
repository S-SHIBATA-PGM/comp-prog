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
        final String space = " ";
        final int one = 1;
        final int two = 2;
        final String[] arr = reader.readLine().split (space);
        final int A = Integer.parseInt (arr[one]);
        final int B = Integer.parseInt (arr[two]);
        final String S = reader.readLine();
        reader.close();
        System.out.println (S.substring (A, S.length() - B));
        System.exit (0);
    }
}