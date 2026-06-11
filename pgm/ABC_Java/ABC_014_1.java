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
        int a = Integer.parseInt (reader.readLine());
        int b = Integer.parseInt (reader.readLine());
        reader.close();
        System.out.println ((b - a % b) % b);
        System.exit (0);
    }
}