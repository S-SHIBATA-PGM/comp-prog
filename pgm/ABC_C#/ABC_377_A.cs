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
        string S = Console.ReadLine();
        const string Yes = "Yes";
        const string No = "No";
        const char cA = 'A';
        const char cB = 'B';
        const char cC = 'C';
        char[] ABC = [cA, cB, cC];
        Console.WriteLine(ABC.All(a => S.Contains(a)) ? Yes : No);
        Environment.Exit(0);
    }
}