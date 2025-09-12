import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String blank = "";
        final String[] S = reader.readLine().split (blank);
        final String s = "s";
        final String es = "es";
        System.out.println (s.equals (S[S.length - 1])
                                ? String.join (blank, S).concat (es)
                                : String.join (blank, S).concat (s));
        return;
    }
}