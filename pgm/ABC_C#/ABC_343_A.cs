using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        const char cSpace = ' ';
        const int one = 1;
        const int nine = 9;
        const int zero = 0;
        string[] arr = Console.ReadLine().Split(cSpace);
        int A = int.Parse(arr[zero]);
        int B = int.Parse(arr[one]);
        for (int i = zero; i <= nine; i++)
        {
            if (i != A + B)
            {
                Console.WriteLine(i);
                break;
            }
        }
        Environment.Exit(0);
    }
}