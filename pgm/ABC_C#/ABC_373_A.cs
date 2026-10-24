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
        const int one = 1;
        const int zero = 0;
        int i = one;
        int cnt = zero;
        string line;
        while ((line = Console.ReadLine()) != null)
        {
            string S = line;
            if (S.Length == i)
            {
                cnt++;
            }
            i++;
        }
        Console.WriteLine(cnt);
        Environment.Exit(0);
    }
}