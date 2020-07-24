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
        int N, D;
        N = int.Parse(arr[0]);
        D = int.Parse(arr[1]);
        Console.WriteLine(Math.Ceiling(N / (2M * D + 1)));
        return;
    }
}