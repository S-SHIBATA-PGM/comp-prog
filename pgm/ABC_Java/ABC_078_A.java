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
        final String[] arr = reader.readLine().split (" ");
        final String lt = "<";
        final String gt = ">";
        final String eq = "=";
        final int HEX = 16;
        final int one = 1;
        final int zero = 0;
        int X = Integer.parseInt (arr[zero], HEX);
        int Y = Integer.parseInt (arr[one], HEX);
        System.out.println (X < Y ? lt : X > Y ? gt : eq);
        System.exit (0);
    }
}