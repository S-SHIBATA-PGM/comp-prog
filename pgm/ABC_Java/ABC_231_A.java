import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final double divisor = 100;
        final double D = Double.parseDouble (reader.readLine());
        System.out.println (D / divisor);
        return;
    }
}