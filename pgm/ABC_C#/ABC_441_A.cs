using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        const String Yes = "Yes";
        const String No = "No";
        const char space = ' ';
        const int one = 1;
        const int hundred = 100;
        const int zero = 0;
        string[] arr = Console.ReadLine().Split(space);
        int P = int.Parse(arr[zero]);
        int Q = int.Parse(arr[one]);
        arr = Console.ReadLine().Split(space);
        int X = int.Parse(arr[zero]);
        int Y = int.Parse(arr[one]);
        Console.WriteLine(
            P <= X && X <= P + hundred - one &&
            Q <= Y && Y <= Q + hundred - one ? Yes : No
        );
        Environment.Exit(0);
    }
}