using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        int K = int.Parse(Console.ReadLine());
        string S = Console.ReadLine();
        if (S.Length <= K)
            Console.WriteLine(S);
        else
            Console.WriteLine(S.Substring(0, K) + "...");
        return;
    }
}