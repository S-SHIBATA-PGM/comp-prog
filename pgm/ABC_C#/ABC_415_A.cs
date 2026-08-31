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
        int N = int.Parse(Console.ReadLine());
        int[] A =
            Array.ConvertAll(Console.ReadLine().Trim().Split(' '), int.Parse);
        int X = int.Parse(Console.ReadLine());
        const String Yes = "Yes";
        const String No = "No";
        Console.WriteLine(A.Contains(X) ? Yes : No);
        Environment.Exit(0);
    }
}