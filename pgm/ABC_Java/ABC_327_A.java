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
        final String a = "a";
        final String b = "b";
        final String Yes = "Yes";
        final String No = "No";
        System.out.println (S.contains (a.concat (b))   ? Yes
                            : S.contains (b.concat (a)) ? Yes
                                                        : No);
        return;
    }
}