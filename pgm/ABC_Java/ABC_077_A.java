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
        final List<String> C = new ArrayList<>();
        final List<String> Rotation = new ArrayList<>();
        String line = "";
        while ((line = reader.readLine()) != null) {
            C.add (line);
        }
        final String YES = "YES";
        final String NO = "NO";
        final int one = 1;
        final int zero = 0;
        for (int i = C.size() - one; i >= zero; i--) {
            String row = C.get (i);
            String reversedRow = new StringBuilder (row).reverse().toString();
            Rotation.add (reversedRow);
        }
        System.out.println (C.equals (Rotation) ? YES : NO);
        System.exit (0);
    }
}