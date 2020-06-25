using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        Console.WriteLine(7 - Array.IndexOf(
            new string[] { "SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT" }, S));
        return;
    }
}