import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String N = reader.readLine();
        final String seven = "7";
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (N.contains (seven) ? Yes : No);
        return;
    }
}