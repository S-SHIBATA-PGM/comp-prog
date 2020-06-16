using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        long N = long.Parse(Console.ReadLine());
        Console.WriteLine(calc(1L, N) - calc(3L, N) - calc(5L, N) + calc(15L, N));
        return;
    }

    static long calc(long n, long N)
    {
        return (n + N / n * n) * (N / n) / 2;
    }
}