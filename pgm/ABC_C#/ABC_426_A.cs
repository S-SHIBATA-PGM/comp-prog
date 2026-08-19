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
        const string Ocelot = "Ocelot";
        const string Serval = "Serval";
        const string Lynx = "Lynx";
        const int one = 1;
        const int zero = 0;
        string X = arr[zero];
        string Y = arr[one];
        string[] OS = [Ocelot, Serval, Lynx];
        Console.WriteLine(
            Array.IndexOf(OS, Y) <= Array.IndexOf(OS, X) ? Yes : No);
        Environment.Exit(0);
    }
}