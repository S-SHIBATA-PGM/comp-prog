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
        String[] arr = reader.readLine().split (" ");
        reader.close();
        final int one = 1;
        final int zero = 0;
        final int twelve = 12;
        int A = Integer.parseInt (arr[zero]);
        int B = Integer.parseInt (arr[one]);
        System.out.println (A * twelve + B);
        System.exit (0);
    }
}