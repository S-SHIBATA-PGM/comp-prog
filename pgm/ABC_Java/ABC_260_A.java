import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S[] = reader.readLine().split ("");
        final int no = -1;
        final int one = 1;
        final int two = 2;
        final int three = 3;
        boolean uniqueFlg = false;
        for (int i = 0; i < S.length; i++) {
            if (uniqueFlg)
                break;
            if (!S[i].equals (S[(i + one) % three]) &&
                !S[i].equals (S[(i + two) % three])) {
                uniqueFlg = true;
                System.out.println (S[i]);
            }
        }
        if (!uniqueFlg)
            System.out.println (no);
        return;
    }
}