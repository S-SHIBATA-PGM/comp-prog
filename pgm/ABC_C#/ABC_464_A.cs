using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        const char cE = 'E';
        const string East = "East";
        const string West = "West";
        long cnt = S.Count(c => c == cE);
        Console.WriteLine(cnt > S.Length - cnt ? East : West);
        return;
    }
}