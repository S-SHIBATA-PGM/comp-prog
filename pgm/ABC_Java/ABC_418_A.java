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
        reader.readLine();
        final String S = reader.readLine();
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final String tea = "tea";
        System.out.println (S.endsWith (tea) ? Yes : No);
        System.exit (0);
    }
}