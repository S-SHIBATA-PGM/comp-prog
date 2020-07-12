using System;
using System.Collections.Generic;
// using System.Globalization;
using System.IO;
// using System.Linq;
using System.Text;

class Program
{
    static void Main()
    {
        FastScanner sc = new FastScanner(Console.OpenStandardInput());
        int N = sc.nextInt();
        string[] S = sc.stringArray(N);
        string[] judge = new string[] { "AC", "WA", "TLE", "RE" };
        string mul = " x ";
        int[] C = new int[judge.Length];
        Array.Fill(C, 0);
        for (int i = 0; i < N; i++) C[Array.IndexOf(judge, S[i])]++;
        for (int i = 0; i < judge.Length; i++)
            Console.WriteLine(judge[i] + mul + C[i]);
        return;
    }
}

// FastScanner start
public class FastScanner
{
    public readonly Stream str;
    private readonly byte[] buf = new byte[1024];
    private int len, ptr;
    public bool isEof = false;
    public FastScanner(Stream stream)
    {
        str = stream;
    }
    private T[] enumerate<T>(int n, Func<T> f)
    {
        var a = new T[n];
        for (int i = 0; i < n; ++i) a[i] = f();
        return a;
    }
    public char nextChar()
    {
        byte b = 0;
        do
        {
            b = read();
        }
        while (33 < b && b < 126 && !isEof);
        return (char)b;
    }
    public string nextString()
    {
        byte b = 0;
        StringBuilder builder = new StringBuilder();
        b = read();
        while (33 < b && b < 126 && !isEof)
        {
            builder.Append((char)b);
            b = read();
        }
        return builder.ToString();
    }
    public int nextInt()
    {
        return (isEof) ? int.MinValue : (int)nextLong();
    }
    public long nextLong()
    {
        if (isEof)
        {
            return long.MinValue;
        }
        long ret = 0;
        byte b = 0;
        var ng = false;
        do
        {
            b = read();
        }
        while (b != '-' && (b < '0' || '9' < b));
        if (b == '-')
        {
            ng = true;
            b = read();
        }
        for (; true; b = read())
        {
            if (b < '0' || '9' < b)
            {
                return ng ? -ret : ret;
            }
            else ret = ret * 10 + b - '0';
        }
    }
    public int[] intArray(int n)
    {
        return enumerate(n, nextInt);
    }
    public long[] longArray(int n)
    {
        return enumerate(n, nextLong);
    }
    public char[] charArray(int n)
    {
        return enumerate(n, nextChar);
    }
    public string[] stringArray(int n)
    {
        return enumerate(n, nextString);
    }
    private byte read()
    {
        if (isEof)
        {
            return 0;
        }
        if (ptr >= len)
        {
            ptr = 0;
            if ((len = str.Read(buf, 0, 1024)) <= 0)
            {
                isEof = true;
                return 0;
            }
        }
        return buf[ptr++];
    }
}
// FastScanner end