import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int num = 12;
        int cnt = 0;
        for (int i = 1; i <= num; i++) {
            String S = reader.readLine();
            if (i == S.length()) {
                cnt++;
            }
        }
        System.out.println (cnt);
        return;
    }
}