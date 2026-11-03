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
        int R = int.Parse(Console.ReadLine());
        const int hundred = 100;
        Console.WriteLine(hundred - R % hundred);
        Environment.Exit(0);
    }
}