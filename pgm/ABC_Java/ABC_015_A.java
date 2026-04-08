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
        String A = reader.readLine();
        String B = reader.readLine();
        reader.close();
        System.out.println (A.length() > B.length() ? A : B);
        System.exit (0);
    }
}