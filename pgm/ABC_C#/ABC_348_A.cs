using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine());
        const char success = 'o';
        const char fail = 'x';
        const int one = 1;
        const int three = 3;
        const int zero = 0;
        StringBuilder sb = new(N);
        for (int i = one; i <= N; i++)
        {
            if (i % three != zero)
            {
                sb.Append(success);
            }
            else
            {
                sb.Append(fail);
            }
        }
        Console.WriteLine(sb.ToString());
        Environment.Exit(0);
    }
}