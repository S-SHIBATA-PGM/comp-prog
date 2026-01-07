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
        final int M = Integer.parseInt (reader.readLine());
        final LocalDateTime now = LocalDateTime.now();
        final int y = now.getYear();
        final int M1 = 1;
        final int M12 = 12;
        final int d1 = 1;
        final int d30 = 30;
        final int h0 = 0;
        final int m0 = 0;
        final int s0 = 0;
        final int one = 1;
        final LocalDateTime thisYear = now.withMonth (M12)
                                           .withDayOfMonth (d30)
                                           .withHour (M)
                                           .withMinute (m0)
                                           .withSecond (s0);
        final LocalDateTime nextYear = now.withYear (y + one)
                                           .withMonth (M1)
                                           .withDayOfMonth (d1)
                                           .withHour (h0)
                                           .withMinute (m0)
                                           .withSecond (s0);
        final Duration duration = Duration.between (thisYear, nextYear);
        System.out.println (duration.toHours());
        System.exit (0);
    }
}