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
        const string AtCoder = "AtCoder";
        const string Land = "Land";
        const int one = 1;
        const int zero = 0;
        string S = arr[zero];
        string T = arr[one];
        Console.WriteLine(S == AtCoder && T == Land ? Yes : No);
        Environment.Exit(0);
    }
}