using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int S, W;
        S = int.Parse(arr[0]);
        W = int.Parse(arr[1]);
        Console.WriteLine(S <= W ? "unsafe" : "safe");
        return;
    }
}