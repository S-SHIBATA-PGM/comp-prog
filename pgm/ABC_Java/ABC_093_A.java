import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] S = reader.readLine().split ("");
        final String Yes = "Yes";
        final String No = "No";
        final int zero = 0;
        final int three = 3;
        Set<String> st = new HashSet<>();
        for (int i = zero; i < S.length; i++) {
            st.add (S[i]);
        }
        System.out.println (st.size() == three ? Yes : No);
        System.exit (0);
    }
}