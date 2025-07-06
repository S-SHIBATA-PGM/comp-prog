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
        final int x, y;
        x = Integer.parseInt (arr[0]);
        y = Integer.parseInt (arr[1]);
        System.out.println (x == y ? x : three - x - y);
        return;
    }
}