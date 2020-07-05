import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String S = reader.readLine();
        String O = "RUD";
        String E = "LUD";
        boolean flg = true;
        for (int i = 0; i < S.length(); i++) {
            if (1 == (i + 1) % 2 && !O.contains (S.substring (i, i + 1))) {
                flg = false;
                break;
            }
            if (1 == i % 2 && !E.contains (S.substring (i, i + 1))) {
                flg = false;
                break;
            }
        }
        System.out.println (flg ? "Yes" : "No");
        return;
    }
}