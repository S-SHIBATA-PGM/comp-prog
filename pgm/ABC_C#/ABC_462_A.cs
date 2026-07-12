using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        Console.WriteLine(string.Concat(S.Where(char.IsDigit)));
        Environment.Exit(0);
    }
}