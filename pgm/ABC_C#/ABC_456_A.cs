using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        int X = int.Parse(Console.ReadLine());
        const string Yes = "Yes";
        const string No = "No";
        const int one = 1;
        const int three = 3;
        const int six = 6;
        Console.WriteLine(one * three <= X && X <= six * three ? Yes : No);
        Environment.Exit(0);
    }
}