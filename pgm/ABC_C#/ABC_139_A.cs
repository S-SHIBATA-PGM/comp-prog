// Ref ABC 172 B
using System;
using System.Collections.Generic;
using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        string T = Console.ReadLine();
        var z = S.Zip(T, (first, second) => new char[] { first, second });
        int ans = 0;
        foreach (var v in z) if (v[0] == v[1]) ans++;
        Console.WriteLine(ans);
        return;
    }
}