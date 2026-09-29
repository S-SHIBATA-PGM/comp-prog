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
        double X = double.Parse(Console.ReadLine());
        const double dHigh = 38.0D;
        const double dFever = 37.5D;
        const int high = 1;
        const int fever = 2;
        const int normal = 3;
        Console.WriteLine(dHigh <= X ? high : dFever <= X ? fever : normal);
        Environment.Exit(0);
    }
}