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
        string S = Console.ReadLine();
        const int one = 1;
        const int two = 2;
        const int eight = 8;
        const int zero = 0;
        const char cZero = '0';
        int world = S[zero] - cZero;
        int stage = S[two] - cZero;
        if (stage == eight)
        {
            world += one;
            stage = one;
        }
        else
        {
            stage += one;
        }
        Console.WriteLine($"{world}{S[one]}{stage}");
        Environment.Exit(0);
    }
}