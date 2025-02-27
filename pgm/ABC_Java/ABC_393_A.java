import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] S = reader.readLine().split (" ");
        final String sick = "sick";
        final String fine = "fine";
        if (sick.equals (S[0]) && sick.equals (S[1])) {
            System.out.println (1);
        } else if (sick.equals (S[0]) && fine.equals (S[1])) {
            System.out.println (2);
        } else if (fine.equals (S[0]) && sick.equals (S[1])) {
            System.out.println (3);
        } else {
            System.out.println (4);
        }
        return;
    }
}