using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int K = int.Parse(arr[0]), X = int.Parse(arr[1]);
        Console.WriteLine(X <= 500 * K ? "Yes" : "No");
    }
}