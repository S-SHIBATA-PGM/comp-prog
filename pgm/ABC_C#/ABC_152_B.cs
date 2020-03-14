using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int a = int.Parse(arr[0]), b = int.Parse(arr[1]);
        Console.WriteLine(
            a < b ? new string(arr[0][0], b) : new string(arr[1][0], a));
    }
}