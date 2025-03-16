import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

class RGB {
    String key;
    int value;

    public RGB (String key, int value) {
        this.key = key;
        this.value = value;
    }

    public String getKey() {
        return key;
    }

    public int getValue() {
        return value;
    }
}
public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final String C = reader.readLine();
        final List<RGB> RGB = new ArrayList<>();
        RGB.add (new RGB ("Red", Integer.parseInt (arr[0])));
        RGB.add (new RGB ("Green", Integer.parseInt (arr[1])));
        RGB.add (new RGB ("Blue", Integer.parseInt (arr[2])));
        final List<RGB> rgb = RGB.stream()
                                  .filter (p -> !C.equals (p.getKey()))
                                  .collect (Collectors.toList());
        rgb.sort ((a, b) -> a.value - b.value);
        System.out.println (rgb.get (0).value);
        return;
    }
}