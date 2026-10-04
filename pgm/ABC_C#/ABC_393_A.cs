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
        string[] S = Console.ReadLine().Split(' ');
        const string sick = "sick";
        const string fine = "fine";
        const int one = 1;
        const int two = 2;
        const int three = 3;
        const int four = 4;
        const int zero = 0;
        Console.WriteLine(
            S[zero] == sick && S[one] == sick
            ? one
            : S[zero] == sick && S[one] == fine
            ? two
            : S[zero] == fine && S[one] == sick
            ? three
            : four
        );
        Environment.Exit(0);
    }
}