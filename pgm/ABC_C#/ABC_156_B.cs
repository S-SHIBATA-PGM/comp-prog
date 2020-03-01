using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int N = int.Parse(arr[0]), K = int.Parse(arr[1]);
        int cnt = 0;
        while (0 < N)
        {
            N /= K;
            cnt++;
        }
        Console.WriteLine(cnt);
    }
}