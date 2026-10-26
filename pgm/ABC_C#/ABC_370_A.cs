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
        const string Invalid = "Invalid";
        const int one = 1;
        const int zero = 0;
        int L = int.Parse(arr[zero]);
        int R = int.Parse(arr[one]);
        Console.WriteLine(
            L == one && R == zero
            ? Yes
            : L == zero && R == one
            ? No
            : Invalid);
        Environment.Exit(0);
    }
}