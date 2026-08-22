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
        string[] arr = Console.ReadLine().Split(' ');
        const int one = 1;
        const int thousand = 1000;
        const int zero = 0;
        int X = int.Parse(arr[zero]);
        int C = int.Parse(arr[one]);
        Console.WriteLine(thousand * (X / (thousand + C)));
        Environment.Exit(0);
    }
}