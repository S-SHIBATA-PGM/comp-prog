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
        int H = int.Parse(Console.ReadLine());
        const int one = 1;
        const int baseNum = 2;
        int day = one;
        int e = one;
        int value = one;
        while (value <= H)
        {
            e *= baseNum;
            value += e;
            day += one;
        }
        Console.WriteLine(day);
        Environment.Exit(0);
    }
}