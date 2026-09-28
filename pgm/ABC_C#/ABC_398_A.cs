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
        const char cEqual = '=';
        const char cHyphen = '-';
        const int two = 2;
        int lr = (N - two + N % two) / two;
        int c = two - N % two;
        Console.WriteLine(
            string.Concat(
                new string(cHyphen, lr),
                new string(cEqual, c),
                new string(cHyphen, lr)
            )
        );
        Environment.Exit(0);
    }
}