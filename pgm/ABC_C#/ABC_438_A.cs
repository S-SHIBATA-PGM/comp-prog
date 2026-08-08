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
        const int seven = 7;
        const int zero = 0;
        int D = int.Parse(arr[zero]);
        int F = int.Parse(arr[one]);
        Console.WriteLine(
            (F + seven * ((D - F) / seven + one) - one) % D + one);
        Environment.Exit(0);
    }
}