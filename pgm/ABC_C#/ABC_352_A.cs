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
        string[] arr = Console.ReadLine().Split(' ');
        const string Yes = "Yes";
        const string No = "No";
        const int one = 1;
        const int two = 2;
        const int three = 3;
        int X = int.Parse(arr[one]);
        int Y = int.Parse(arr[two]);
        int Z = int.Parse(arr[three]);
        Console.WriteLine(Math.Min(X, Y) < Z && Z < Math.Max(X, Y) ? Yes : No);
        Environment.Exit(0);
    }
}