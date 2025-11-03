import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] n = reader.readLine().split ("");
        final String one = "1";
        final String nine = "9";
        final int zero = 0;
        for (int i = zero; i < n.length; i++)
            if (one.equals (n[i]))
                System.out.print (nine);
            else if (nine.equals (n[i]))
                System.out.print (one);
            else
                System.out.print (n[i]);
        System.out.println();
        return;
    }
}