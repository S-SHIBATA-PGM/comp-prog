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
        final int S = Integer.parseInt (reader.readLine());
        reader.close();
        final String Success = "Success";
        final String Failure = "Failure";
        final int twoHundred = 200;
        final int twoHundredNinetyNine = 299;
        System.out.println (
            twoHundred <= S && S <= twoHundredNinetyNine ? Success : Failure);
        System.exit (0);
    }
}