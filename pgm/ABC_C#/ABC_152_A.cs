using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int N = int.Parse(arr[0]), M = int.Parse(arr[1]);
        Console.WriteLine(N == M ? "Yes" : "No");
    }
}