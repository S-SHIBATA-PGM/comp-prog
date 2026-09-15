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
        int S = int.Parse(Console.ReadLine());
        const string Success = "Success";
        const string Failure = "Failure";
        const int twoHundred = 200;
        const int twoHundredNinetyNine = 299;
        Console.WriteLine(
            twoHundred <= S && S <= twoHundredNinetyNine
                ? Success
                : Failure);
        Environment.Exit(0);
    }
}