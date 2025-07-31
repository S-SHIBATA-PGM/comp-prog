import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] ab = reader.readLine().split (" ");
        final String[] cd = reader.readLine().split (" ");
        final int one = 1;
        final int zero = 0;
        final int x = Integer.parseInt (ab[one]);
        final int y = Integer.parseInt (cd[zero]);
        System.out.println (x - y);
        return;
    }
}