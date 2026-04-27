import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        reader.close();
        final String comma = ",";
        System.out.println (IntStream.rangeClosed (1, N)
                                .mapToObj (i -> String.valueOf (N - i + 1))
                                .collect (Collectors.joining (comma)));
        System.exit (0);
    }
}