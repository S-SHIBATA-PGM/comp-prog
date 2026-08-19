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
        Console.WriteLine(S.Remove((S.Length + one) / two - one, one));
        Environment.Exit(0);
    }
}