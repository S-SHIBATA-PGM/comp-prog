using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split();
        int A, B;
        A = int.Parse(arr[0]);
        B = int.Parse(arr[1]);
        Console.WriteLine(Math.Max(A + B, Math.Max(A - B, A * B)));
        return;
    }
}