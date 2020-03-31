using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;

class Program
{
    static void Main()
    {
        FastScanner sc = new FastScanner(Console.OpenStandardInput());
        int N, K, M;
        N  = sc.nextInt();
        K  = sc.nextInt();
        M  = sc.nextInt();
        int[] A = sc.intArray(N - 1);
        int accum  = 0;
        foreach(int Ai in A) accum += Ai;
        int ans = N * M - accum;
        Console.WriteLine(ans < 0 ? 0 : K < ans ? -1 : ans);
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
        while ((b < 33 || 126 < b) && !isEof);
        return (char)b;
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
    public string Scan()
    {
        var sb = new StringBuilder();
        for (var b = nextChar(); b >= 33 && b <= 126; b = (char)read())
        {
            sb.Append(b);
        }
        return sb.ToString();
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