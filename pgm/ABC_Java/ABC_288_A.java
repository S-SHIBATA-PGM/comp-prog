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
        String line = "";
        while ((line = reader.readLine()) != null) {
            String[] arr = line.split (" ");
            System.out.println (Integer.parseInt (arr[0]) +
                                Integer.parseInt (arr[1]));
        }
        return;
    }
}