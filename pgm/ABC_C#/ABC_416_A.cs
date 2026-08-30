using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split(' ');
        const String Yes = "Yes";
        const String No = "No";
        const char o = 'o';
        const int one = 1;
        const int two = 2;
        int L = int.Parse(arr[one]);
        int R = int.Parse(arr[two]);
        String S = Console.ReadLine();
        Console.WriteLine(
            S.Substring(L - one, R - L + one).All(c => c == o) ? Yes : No);
        Environment.Exit(0);
    }
}