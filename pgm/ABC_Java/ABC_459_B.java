import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    private static final TreeMap<Character, Integer> C = new TreeMap<>();
    public static final char cA = 'a';
    public static final char cD = 'd';
    public static final char cG = 'g';
    public static final char cJ = 'j';
    public static final char cM = 'm';
    public static final char cP = 'p';
    public static final char cT = 't';
    public static final char cW = 'w';
    public static final int two = 2;
    public static final int three = 3;
    public static final int four = 4;
    public static final int five = 5;
    public static final int six = 6;
    public static final int seven = 7;
    public static final int eight = 8;
    public static final int nine = 9;
    public static final int zero = 0;

    static {
        C.put (cA, two);
        C.put (cD, three);
        C.put (cG, four);
        C.put (cJ, five);
        C.put (cM, six);
        C.put (cP, seven);
        C.put (cT, eight);
        C.put (cW, nine);
    }

    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String[] arr = reader.readLine().split (" ");
        reader.close();
        StringBuilder sb = new StringBuilder();
        for (int i = zero; i < N; i++) {
            sb.append (C.floorEntry (arr[i].charAt (zero)).getValue());
        }
        System.out.println (sb.toString());
        System.exit (0);
    }
}