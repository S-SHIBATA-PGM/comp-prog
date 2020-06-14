using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int A, B, C, D;
        A = int.Parse(arr[0]);
        B = int.Parse(arr[1]);
        C = int.Parse(arr[2]);
        D = int.Parse(arr[3]);
        Console.WriteLine((B + C - 1) / B <= (A + D - 1) / D ? "Yes" : "No");
        return;
    }
}