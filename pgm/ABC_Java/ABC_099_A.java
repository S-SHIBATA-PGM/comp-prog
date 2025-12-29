import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String ABC = "ABC";
        final String ABD = "ABD";
        final int thousand = 1000;
        System.out.println (N < thousand ? ABC : ABD);
        return;
    }
}