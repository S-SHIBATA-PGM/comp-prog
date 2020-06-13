using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        long X = long.Parse(Console.ReadLine());
        long cur = 100L;
        long ans = 0L;
        while (cur < X)
        {
            cur += cur / 100;
            ans++;
        }
        Console.WriteLine(ans);
        return;
    }
}