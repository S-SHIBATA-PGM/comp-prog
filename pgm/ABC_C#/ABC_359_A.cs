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
        Console.ReadLine();
        const string Takahashi = "Takahashi";
        const int zero = 0;
        int cnt = zero;
        string line;
        while ((line = Console.ReadLine()) != null)
        {
            if (line == Takahashi)
            {
                cnt++;
            }
        }
        Console.WriteLine(cnt);
        Environment.Exit(0);
    }
}