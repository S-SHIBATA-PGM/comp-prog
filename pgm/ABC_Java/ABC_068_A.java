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
        final String N = reader.readLine();
        final String ABC = "ABC";
        System.out.println (ABC.concat (N));
        System.exit (0);
    }
}