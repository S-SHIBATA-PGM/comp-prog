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
        reader.readLine();
        final String S = reader.readLine();
        reader.close();
        final String o = "o";
        final String pattern = String.format ("^%s+", o);
        final String blank = "";
        System.out.println (S.replaceFirst (pattern, blank));
        System.exit (0);
    }
}