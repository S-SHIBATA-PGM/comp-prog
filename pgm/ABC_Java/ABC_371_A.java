import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        List<String> ABC = new LinkedList<>();
        ABC.add ("A");
        ABC.add ("B");
        ABC.add ("C");
        if (">".equals (arr[0])) {
            if (ABC.indexOf ("A") < ABC.indexOf ("B")) {
                ABC.remove (ABC.indexOf ("B"));
                ABC.add (ABC.indexOf ("A"), "B");
            }
        } else {
            if (ABC.indexOf ("B") < ABC.indexOf ("A")) {
                ABC.remove (ABC.indexOf ("A"));
                ABC.add (ABC.indexOf ("B"), "A");
            }
        }
        if (">".equals (arr[1])) {
            if (ABC.indexOf ("A") < ABC.indexOf ("C")) {
                ABC.remove (ABC.indexOf ("C"));
                ABC.add (ABC.indexOf ("A"), "C");
            }
        } else {
            if (ABC.indexOf ("C") < ABC.indexOf ("A")) {
                ABC.remove (ABC.indexOf ("A"));
                ABC.add (ABC.indexOf ("C"), "A");
            }
        }
        if (">".equals (arr[2])) {
            if (ABC.indexOf ("B") < ABC.indexOf ("C")) {
                ABC.remove (ABC.indexOf ("C"));
                ABC.add (ABC.indexOf ("B"), "C");
            }
        } else {
            if (ABC.indexOf ("C") < ABC.indexOf ("B")) {
                ABC.remove (ABC.indexOf ("B"));
                ABC.add (ABC.indexOf ("C"), "B");
            }
        }
        System.out.println (ABC.get (1));
        return;
    }
}