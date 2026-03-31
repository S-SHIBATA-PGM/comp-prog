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
        String X = reader.readLine();
        final int one = 1;
        final int zero = 0;
        System.out.println (Character.getNumericValue (X.charAt (zero)) +
                            Character.getNumericValue (X.charAt (one)));
        System.exit (0);
    }
}