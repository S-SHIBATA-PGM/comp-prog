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
        string[] arr = Console.ReadLine().Split();
        const string Yes = "Yes";
        const string No = "No";
        const int one = 1;
        const int nine = 9;
        const int sixteen = 16;
        const int zero = 0;
        int X = int.Parse(arr[zero]);
        int Y = int.Parse(arr[one]);
        Console.WriteLine(nine * X == sixteen * Y ? Yes : No);
        Environment.Exit(0);
    }
}