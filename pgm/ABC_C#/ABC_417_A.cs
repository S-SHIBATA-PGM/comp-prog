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
        const int two = 2;
        int A = int.Parse(arr[one]);
        int B = int.Parse(arr[two]);
        String S = Console.ReadLine();
        Console.WriteLine(S.Substring(A, S.Length - A - B));
        Environment.Exit(0);
    }
}