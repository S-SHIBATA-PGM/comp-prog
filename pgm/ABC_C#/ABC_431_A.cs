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
        int H = int.Parse(arr[zero]);
        int B = int.Parse(arr[one]);
        Console.WriteLine(Math.Max(H, B) - B);
        Environment.Exit(0);
    }
}