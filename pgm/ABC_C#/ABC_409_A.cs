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
        Console.ReadLine();
        string S = Console.ReadLine();
        string T = Console.ReadLine();
        const string Yes = "Yes";
        const string No = "No";
        const char cCircle = 'o';
        Console.WriteLine(
            S.Zip(T, (s, t) => s == cCircle && t == cCircle).Any(b => b)
                ? Yes
                : No
        );
        Environment.Exit(0);
    }
}