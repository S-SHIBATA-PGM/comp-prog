using System;
// using System.Collections.Generic;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int A, B;
        A = int.Parse(arr[0]);
        B = int.Parse(arr[1]);
        Console.WriteLine(A * B);
    }
}