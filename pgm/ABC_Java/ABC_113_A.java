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
        final int two = 2;
        final int zero = 0;
        final int X = Integer.parseInt (arr[zero]);
        final int Y = Integer.parseInt (arr[one]);
        System.out.println (X + Y / two);
        return;
    }
}