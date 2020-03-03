using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        double A = double.Parse(arr[0]);
        Console.WriteLine(Math.Ceiling(A / 2));
    }
}