using System;
using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string D = Console.ReadLine();
        const char N = 'N';
        const char E = 'E';
        const char W = 'W';
        const char S = 'S';
        Dictionary<char, char> NEWS = new Dictionary<char, char>
        {
            { N, S },
            { E, W },
            { W, E },
            { S, N }
        };
        Console.WriteLine(string.Concat(D.Select(d => NEWS[d])));
        Environment.Exit(0);
    }
}