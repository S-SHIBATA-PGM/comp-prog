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
        final String Yes = "Yes";
        final String No = "No";
        final String san = "san";
        System.out.println (S.endsWith (san) ? Yes : No);
        return;
    }
}