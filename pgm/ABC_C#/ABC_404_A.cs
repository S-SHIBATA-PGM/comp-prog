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
        const char a = 'a';
        const char z = 'z';
        char missing = default;
        for (char c = a; c <= z; c++)
        {
            if (!S.Contains(c))
            {
                missing = c;
                break;
            }
        }
        Console.WriteLine(missing);
        Environment.Exit(0);
    }
}