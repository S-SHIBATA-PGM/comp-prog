import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String s = reader.readLine();
        final String zero = "0";
        final String one = "1";
        final String dummy = "x";
        String ans = s;
        ans = ans.replace (zero, dummy);
        ans = ans.replace (one, zero);
        ans = ans.replace (dummy, one);
        System.out.println (ans);
        return;
    }
}