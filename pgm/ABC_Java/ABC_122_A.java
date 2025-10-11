import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String b = reader.readLine();
        Map<String, String> m = new HashMap<>();
        m.put ("A", "T");
        m.put ("G", "C");
        m.put ("T", "A");
        m.put ("C", "G");
        System.out.println (m.get (b));
        return;
    }
}