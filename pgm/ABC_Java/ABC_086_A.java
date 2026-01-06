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
        final String Odd = "Odd";
        final String Even = "Even";
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final int a = Integer.parseInt (arr[zero]);
        final int b = Integer.parseInt (arr[one]);
        System.out.println (a * b % two != zero ? Odd : Even);
        System.exit (0);
    }
}