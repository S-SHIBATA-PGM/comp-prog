using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        const char cSpace = ' ';
        const int one = 1;
        const int two = 2;
        const int three = 3;
        const int zero = 0;
        string[] arr = Console.ReadLine().Split(cSpace);
        int A = int.Parse(arr[zero]);
        int B = int.Parse(arr[one]);
        Console.WriteLine(
            A == B
            ? -one
            : new int[] { one, two, three }.First(x => x != A && x != B)
        );
        Environment.Exit(0);
    }
}