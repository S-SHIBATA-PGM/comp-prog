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
        string P = Console.ReadLine();
        int L = int.Parse(Console.ReadLine());
        const String Yes = "Yes";
        const String No = "No";
        Console.WriteLine(P.Length >= L ? Yes : No);
        Environment.Exit(0);
    }
}