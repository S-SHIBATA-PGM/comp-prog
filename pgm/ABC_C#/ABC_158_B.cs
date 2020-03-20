using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        long N = long.Parse(arr[0]);
        long A = long.Parse(arr[1]);
        long B = long.Parse(arr[2]);
        long dv, rm;
        dv = N / (A + B);
        rm = N % (A + B);
        Console.WriteLine(A * dv + Math.Min(A, rm));
    }
}