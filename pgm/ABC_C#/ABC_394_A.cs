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
        const char cTwo = '2';
        Console.WriteLine([.. S.Where(s => s == cTwo)]);
        Environment.Exit(0);
    }
}