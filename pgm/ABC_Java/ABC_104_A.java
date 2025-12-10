import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final Integer R = Integer.valueOf (reader.readLine());
        final Map<Integer, String> Rating = new LinkedHashMap<>();
        final String AGC = "AGC";
        final int zero = 0;
        Rating.put (1200, "ABC");
        Rating.put (2800, "ARC");
        String Contest = "";
        for (Map.Entry<Integer, String> entry : Rating.entrySet()) {
            if (entry.getKey().compareTo (R) > zero) {
                Contest = entry.getValue();
                break;
            }
        }
        System.out.println (Contest.isEmpty() ? AGC : Contest);
        return;
    }
}