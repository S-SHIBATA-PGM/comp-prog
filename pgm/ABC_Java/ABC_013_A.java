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
        int one = 1;
        int zero = 0;
        char A = 'A';
        char X = reader.readLine().charAt (zero);
        reader.close();
        System.out.println (X - A + one);
        System.exit (0);
    }
}