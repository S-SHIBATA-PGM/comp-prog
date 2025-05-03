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
        final char sharp = '#';
        String line = "";
        int cnt = 0;
        while ((line = reader.readLine()) != null) {
            for (char c : line.toCharArray()) {
                if (c == sharp) {
                    cnt++;
                }
            }
        }
        System.out.println (cnt);
        return;
    }
}