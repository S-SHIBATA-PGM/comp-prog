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
        final int H1 = Integer.parseInt (reader.readLine());
        final int H2 = Integer.parseInt (reader.readLine());
        reader.close();
        System.out.println (H1 - H2);
        System.exit (0);
    }
}