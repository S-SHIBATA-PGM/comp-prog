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
        final String Yes = "Yes";
        final String No = "No";
        final String lt = "<";
        final String eq = "=";
        final String gt = ">";
        System.out.println (
            lt.equals (S.substring (0, 1)) &&
                    String.join ("", Collections.nCopies (S.length() - 2, eq))
                        .equals (S.substring (1, S.length() - 1)) &&
                    gt.equals (S.substring (S.length() - 1, S.length()))
                ? Yes
                : No);
        return;
    }
}