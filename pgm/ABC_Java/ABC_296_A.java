import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        reader.readLine();
        final String S = reader.readLine();
        final String M = "M";
        final String F = "F";
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (
            S.contains (M.concat (M)) || S.contains (F.concat (F)) ? No : Yes);
        return;
    }
}