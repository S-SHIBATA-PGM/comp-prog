import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        reader.close();
        final String red = "red";
        final String blue = "blue";
        final String green = "green";
        final String SSS = "SSS";
        final String FFF = "FFF";
        final String MMM = "MMM";
        final String Unknown = "Unknown";
        final Map<String, String> language =
            Map.of (red, SSS, blue, FFF, green, MMM);
        System.out.println (language.getOrDefault (S, Unknown));
        System.exit (0);
    }
}