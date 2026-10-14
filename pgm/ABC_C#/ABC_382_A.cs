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
        const int one = 1;
        const char cPeriod = '.';
        int D = int.Parse(arr[one]);
        string S = Console.ReadLine();
        Console.WriteLine(S.Count(s => s == cPeriod) + D);
        Environment.Exit(0);
    }
}