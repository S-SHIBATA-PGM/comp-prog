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
        final List<String> list =
            List.of ("ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD");
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (list.stream().anyMatch (s -> S.equals (s)) ? Yes
                                                                       : No);
        return;
    }
}