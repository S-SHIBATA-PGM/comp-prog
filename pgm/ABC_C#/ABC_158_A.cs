using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        String arr = Console.ReadLine();
        HashSet<char> S = new HashSet<char>(arr);
        Console.WriteLine(1 < S.Count ? "Yes" : "No");
    }
}