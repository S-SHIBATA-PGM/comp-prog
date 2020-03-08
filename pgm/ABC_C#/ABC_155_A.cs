using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int A = int.Parse(arr[0]), B = int.Parse(arr[1]), C = int.Parse(arr[2]);
        bool flg = false;
        if (A == B && B != C)
            flg = true;
        else if (B == C && C != A)
            flg = true;
        else if (C == A && A != B)
            flg = true;
        Console.WriteLine(flg ? "Yes" : "No");
    }
}