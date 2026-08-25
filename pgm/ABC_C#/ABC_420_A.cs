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
        const int zero = 0;
        int X = int.Parse(arr[zero]);
        int Y = int.Parse(arr[one]);
        DateTime dt = new DateTime(DateTime.Today.Year, one, one);
        Console.WriteLine(dt.AddMonths(X + Y - one).Month);
        Environment.Exit(0);
    }
}