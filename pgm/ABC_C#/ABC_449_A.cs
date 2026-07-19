using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        double D = double.Parse(Console.ReadLine());
        const string lBrace = "{";
        const string rBrace = "}";
        const string colon = ":";
        const string F = "F";
        const int thirteen = 13;
        const int zero = 0;
        const double dTwo = 2.0;
        string fmt = string.Concat(lBrace, zero, colon, F, thirteen, rBrace);
        Console.WriteLine(
            string.Format(fmt, Math.PI * Math.Pow(D / dTwo, dTwo)));
        Environment.Exit(0);
    }
}