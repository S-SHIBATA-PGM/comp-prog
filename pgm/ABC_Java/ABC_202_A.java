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
        final int three = 3;
        final int seven = 7;
        final int a = Integer.parseInt (arr[0]);
        final int b = Integer.parseInt (arr[1]);
        final int c = Integer.parseInt (arr[2]);
        System.out.println (seven * three - a - b - c);
        return;
    }
}