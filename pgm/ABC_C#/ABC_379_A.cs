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
        string N = Console.ReadLine();
        const char space = ' ';
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        Console.WriteLine(
            string.Concat(
                N[one]
                , N[two]
                , N[zero]
                , space
                , N[two]
                , N[zero]
                , N[one]
            )
        );
        Environment.Exit(0);
    }
}