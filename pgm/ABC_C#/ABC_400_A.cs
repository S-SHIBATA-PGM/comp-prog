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
        int A = int.Parse(Console.ReadLine());
        const int one = 1;
        const int fourHundred = 400;
        const int zero = 0;
        Console.WriteLine(fourHundred % A != zero ? -one : fourHundred / A);
        return;
    }
}