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
        final int seven = 7;
        final int zero = 0;
        int D = Integer.parseInt (arr[zero]);
        int F = Integer.parseInt (arr[one]);
        System.out.println ((F + seven * ((D - F) / seven + one) - one) % D +
                            one);
        System.exit (0);
    }
}