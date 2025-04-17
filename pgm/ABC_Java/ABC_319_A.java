import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        Map<String, Integer> m = new HashMap<>();
        m.put ("tourist", 3858);
        m.put ("ksun48", 3679);
        m.put ("Benq", 3658);
        m.put ("Um_nik", 3648);
        m.put ("apiad", 3638);
        m.put ("Stonefeang", 3630);
        m.put ("ecnerwala", 3613);
        m.put ("mnbvmar", 3555);
        m.put ("newbiedmy", 3516);
        m.put ("semiexp", 3481);
        System.out.println (m.get (S));
        return;
    }
}