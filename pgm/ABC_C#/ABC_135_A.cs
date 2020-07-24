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
        int A, B;
        A = int.Parse(arr[0]);
        B = int.Parse(arr[1]);
        Console.WriteLine((A + B) % 2 == 0 ? ((A + B) / 2).ToString() : "IMPOSSIBLE");
        return;
    }
}