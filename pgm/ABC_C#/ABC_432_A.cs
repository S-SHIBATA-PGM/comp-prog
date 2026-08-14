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
        int[] ABC = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
        Array.Sort(ABC);
        Array.Reverse(ABC);
        Console.WriteLine(string.Concat(ABC));
        Environment.Exit(0);
    }
}