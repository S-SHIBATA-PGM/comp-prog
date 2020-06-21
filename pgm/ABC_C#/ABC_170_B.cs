// C + T = X
// 2 * C + 4 * T = Y
// T = X - C
// 2 * C + 4 * (X - C) = Y
// - 2 * C = Y - 4 * X
// C = 2 * X - Y / 2
// T = -X + Y / 2

using System;
// using System.Collections.Generic;
// using System.Linq;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int X, Y;
        X = int.Parse(arr[0]);
        Y = int.Parse(arr[1]);
        int C, T;
        C = 2 * X - Y / 2;
        T = -X + Y / 2;
        Console.WriteLine(0 <= C && 0 <= T && C + T == X && 2 * C + 4 * T == Y ? "Yes" : "No");
        return;
    }
}