import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split ("");
        final int abc =
            Integer.parseInt (arr[0].concat (arr[1]).concat (arr[2]));
        final int bca =
            Integer.parseInt (arr[1].concat (arr[2]).concat (arr[0]));
        final int cab =
            Integer.parseInt (arr[2].concat (arr[0]).concat (arr[1]));
        System.out.println (abc + bca + cab);
        return;
    }
}