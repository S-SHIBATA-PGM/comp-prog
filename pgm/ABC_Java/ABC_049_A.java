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
        final String c = reader.readLine();
        final String[] aeiou = {"a", "e", "i", "o", "u"};
        final String vowel = "vowel";
        final String consonant = "consonant";
        System.out.println (Arrays.asList (aeiou).contains (c) ? vowel
                                                               : consonant);
        System.exit (0);
    }
}