import java.io.*;
// import java.math.*;
import java.time.*;
import java.time.format.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int K = Integer.parseInt (reader.readLine());
        final String HHmm = "HH:mm";
        final DateTimeFormatter formatter = DateTimeFormatter.ofPattern (HHmm);
        final LocalDateTime datetime = LocalDateTime.of (2022, 7, 2, 21, 0, 0);
        System.out.println (datetime.plusMinutes (K).format (formatter));
        return;
    }
}