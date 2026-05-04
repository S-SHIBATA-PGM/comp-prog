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
        final String S = reader.readLine();
        reader.close();
        final char cI = 'i';
        final char cJ = 'j';
        System.out.println (S.chars().filter (c -> c == cI || c == cJ).count());
        System.exit (0);
    }
}