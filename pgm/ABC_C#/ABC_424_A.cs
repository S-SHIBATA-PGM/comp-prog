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
        int[] abc =
            Array.ConvertAll(Console.ReadLine().Trim().Split(' '), int.Parse);
        const String Yes = "Yes";
        const String No = "No";
        const int two = 2;
        Console.WriteLine(abc.Distinct().Count() <= two ? Yes : No);
        Environment.Exit(0);
    }
}