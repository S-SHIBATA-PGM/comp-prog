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
        final String ABC = "ABC";
        final int none = -1;
        System.out.println (S.indexOf (ABC) == none ? none
                                                    : S.indexOf (ABC) + 1);
        return;
    }
}