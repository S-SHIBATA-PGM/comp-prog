// import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) {
        Scanner sc = new Scanner (System.in);
        double tenthsBase = 10.0D;
        double sum = 0;
        while (sc.hasNextInt()) {
            int s = sc.nextInt();
            int e = sc.nextInt();
            sum += s * (e / tenthsBase);
        }
        sc.close();
        System.out.println ((int)sum);
    }
}