import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        Map<String, String> NEWS = new HashMap<>();
        NEWS.put ("N", "S");
        NEWS.put ("E", "W");
        NEWS.put ("W", "E");
        NEWS.put ("S", "N");
        String[] D = reader.readLine().split ("");
        StringBuilder sb = new StringBuilder();
        for (String c : D) {
            sb.append (NEWS.get (c));
        }
        System.out.println (sb.toString());
        return;
    }
}