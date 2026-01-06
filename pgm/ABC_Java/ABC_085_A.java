import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        final String year2017 = "2017";
        final String year2018 = "2018";
        System.out.println (S.replaceFirst (year2017, year2018));
        System.exit (0);
    }
}