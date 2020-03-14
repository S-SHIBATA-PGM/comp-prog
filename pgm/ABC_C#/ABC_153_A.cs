using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int H = int.Parse(arr[0]), A = int.Parse(arr[1]);
        Console.WriteLine(Math.Ceiling((double)H / A));
    }
}