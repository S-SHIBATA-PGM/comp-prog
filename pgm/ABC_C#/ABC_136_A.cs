using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split();
        int A, B, C;
        A = int.Parse(arr[0]);
        B = int.Parse(arr[1]);
        C = int.Parse(arr[2]);
        Console.WriteLine(A < B + C ? B + C - A : 0);
        return;
    }
}