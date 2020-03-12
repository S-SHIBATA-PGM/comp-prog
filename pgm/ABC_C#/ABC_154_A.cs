using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        string S = arr[0], T = arr[1];
        arr = Console.ReadLine().Split();
        int A = int.Parse(arr[0]), B = int.Parse(arr[1]);
        string U = Console.ReadLine();
        if (U == S) A--;
        else B--;
        Console.WriteLine(A + " " + B);
    }
}