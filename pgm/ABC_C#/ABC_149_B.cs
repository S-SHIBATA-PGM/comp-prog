using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        long A, B, K;
        A = long.Parse(arr[0]);
        B = long.Parse(arr[1]);
        K = long.Parse(arr[2]);
        Console.WriteLine((A - Math.Min(A, K)).ToString()
            + " "
            + (B - Math.Min(B, K - Math.Min(A, K))).ToString());
        return;
    }
}