import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        char a = reader.readLine().charAt (0);
        System.out.println (a <= 'Z' ? "A" : "a");
        return;
    }
}