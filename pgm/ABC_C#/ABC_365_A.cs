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
        int Y = int.Parse(Console.ReadLine());
        const int four = 4;
        const int hundred = 100;
        const int fourHundred = 400;
        const int year = 365;
        const int leapYear = 366;
        const int zero = 0;
        Console.WriteLine(
            Y % four != zero
            ? year
            : Y % four == zero && Y % hundred != zero
            ? leapYear
            : Y % hundred == zero && Y % fourHundred != zero
            ? year
            : leapYear
        );
        Environment.Exit(0);
    }
}