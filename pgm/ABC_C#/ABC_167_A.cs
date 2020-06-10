using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        String S = Console.ReadLine();
        String T = Console.ReadLine();
        Console.WriteLine(S == T.Substring(0, T.Length - 1) ? "Yes" : "No");
        return;
    }
}