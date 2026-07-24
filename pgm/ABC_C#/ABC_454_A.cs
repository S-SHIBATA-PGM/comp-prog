using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split();
        const int one = 1;
        const int zero = 0;
        int L = int.Parse(arr[zero]);
        int R = int.Parse(arr[one]);
        Console.WriteLine(R - L + one);
        Environment.Exit(0);
    }
}