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
        int N = int.Parse(Console.ReadLine());
        string S = Console.ReadLine();
        const int one = 1;
        const int two = 2;
        Console.WriteLine((N + one) * N / two);
        Environment.Exit(0);
    }
}