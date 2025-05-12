import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        final int six = 6;
        final int len = S.length();
        System.out.println (
            String.join ("", Collections.nCopies (six / len, S)));
        return;
    }
}