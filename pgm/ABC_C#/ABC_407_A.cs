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
        const char cSpace = ' ';
        const int one = 1;
        const int zero = 0;
        string[] arr = Console.ReadLine().Split(cSpace);
        decimal A = decimal.Parse(arr[zero]);
        decimal B = decimal.Parse(arr[one]);
        Console.WriteLine(
            Math.Round(A / B, zero, MidpointRounding.AwayFromZero));
        Environment.Exit(0);
    }
}