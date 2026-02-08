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
        final int x = Integer.parseInt (reader.readLine());
        final int oneThousandTwoHundred = 1200;
        final String ABC = "ABC";
        final String ARC = "ARC";
        System.out.println (x < oneThousandTwoHundred ? ABC : ARC);
        System.exit (0);
    }
}