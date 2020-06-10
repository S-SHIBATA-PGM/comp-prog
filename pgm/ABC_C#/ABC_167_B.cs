using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int A, B, K;
        A = int.Parse(arr[0]);
        B = int.Parse(arr[1]);
        K = int.Parse(arr[3]);
        Console.WriteLine(K <= A ? K : K <= A + B ? A : A - (K - A - B));
        return;
    }
}