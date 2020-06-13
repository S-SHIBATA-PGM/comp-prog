using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        int K = int.Parse(Console.ReadLine());
        String[] arr = Console.ReadLine().Split();
        int A, B;
        A = int.Parse(arr[0]);
        B = int.Parse(arr[1]);
        Console.WriteLine(A <= B / K * K ? "OK" : "NG");
        return;
    }
}