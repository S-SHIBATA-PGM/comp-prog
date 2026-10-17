using System;
using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string N = Console.ReadLine();
        const string Yes = "Yes";
        const string No = "No";
        const char cOne = '1';
        const char cTwo = '2';
        const char cThree = '3';
        const int one = 1;
        const int two = 2;
        const int three = 3;
        const int zero = 0;
        Dictionary<char, int> cnt =
            N.GroupBy(n => n).ToDictionary(g => g.Key, g => g.Count());
        Console.WriteLine(
            cnt.Count == 3
            && cnt.GetValueOrDefault(cOne, zero) == one
            && cnt.GetValueOrDefault(cTwo, zero) == two
            && cnt.GetValueOrDefault(cThree, zero) == three
            ? Yes
            : No
        );
        Environment.Exit(0);
    }
}