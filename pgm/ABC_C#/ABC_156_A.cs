using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int N = int.Parse(arr[0]), R = int.Parse(arr[1]);
        Console.WriteLine(10 <= N ? R : R + 100 * (10 - N));
    }
}