import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    private static final TreeMap<Integer, String> grade = new TreeMap<>();
    public static final String Bad = "Bad";
    public static final String Good = "Good";
    public static final String Great = "Great";
    public static final String Perfect = "Perfect";
    public static final int zero = 0;
    public static final int sixty = 60;
    public static final int ninety = 90;
    public static final int hundred = 100;

    static {
        grade.put (zero, Bad);
        grade.put (sixty, Good);
        grade.put (ninety, Great);
        grade.put (hundred, Perfect);
    }

    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        System.out.println (grade.floorEntry (N).getValue());
        System.exit (0);
    }
}