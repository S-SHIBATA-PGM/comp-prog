import java.io.*;
// import java.math.*;
import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        reader.close();
        final int one = 1;
        System.out.println (Month.of (N).plus (one).getValue());
        System.exit (0);
    }
}