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
        int N = int.Parse(Console.ReadLine());
        const char cOne = '1';
        const char cZero = '0';
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        int len = two * N + one;
        Console.WriteLine(
            new string(
                [
                    ..Enumerable.Range(zero, len)
                        .Select(i => (i % two == zero) ? cOne : cZero)
                ]
            )
        );
        Environment.Exit(0);
    }
}