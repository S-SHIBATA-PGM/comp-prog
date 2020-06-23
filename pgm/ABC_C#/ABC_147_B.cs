using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        String S = Console.ReadLine();
        int ans = 0;
        for (int i = 0; i < S.Length / 2; i++)
            if (S[i] != S[S.Length - i - 1]) ans++;
        Console.WriteLine(ans);
        return;
    }
}