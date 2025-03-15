import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final Integer Y = Integer.parseInt (reader.readLine());
        final int Year = 365;
        final int LeapYear = 366;
        if (Y % 4 != 0) {
            System.out.println (Year);
        } else if (Y % 4 == 0 && Y % 100 != 0) {
            System.out.println (LeapYear);
        } else if (Y % 100 == 0 && Y % 400 != 0) {
            System.out.println (Year);
        } else {
            System.out.println (LeapYear);
        }
        return;
    }
}