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
        int A = Integer.parseInt (reader.readLine());
        int B = Integer.parseInt (reader.readLine());
        reader.close();
        System.out.println ((B - A % B) % B);
        System.exit (0);
    }
}