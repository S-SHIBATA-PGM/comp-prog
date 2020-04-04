using System;
// using System.Collections.Generic;

class Program
{
    static void Main()
    {
        String S = Console.ReadLine();
        Console.WriteLine(S[2] == S[3] && S[4] == S[5] ? "Yes" : "No");
    }
}