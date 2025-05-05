import java.io.*;
// import java.math.*;
import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        final int saturday = DayOfWeek.SATURDAY.getValue();
        System.out.println (saturday -
                            DayOfWeek.valueOf (S.toUpperCase()).getValue());
        return;
    }
}