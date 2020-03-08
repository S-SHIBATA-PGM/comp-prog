using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;

class Program
{
    static readonly int NUM = 3;
    static readonly int MAX_N = 100;

    static bool check(int[] ty, int[] yx, int n)
    {
        bool flg = false;
        ty[yx[n]]++;
        if (ty[yx[n]] == NUM) flg = true;
        return flg;
    }
    static bool check_naname(int[] nnm, int[] y, int[] x, int n)
    {
        bool flg = false;
        if (y[n] == x[n])
        {
            nnm[0]++;
            if (nnm[0] == NUM) flg = true;
        }
        if (y[n] == NUM - x[n] - 1)
        {
            nnm[1]++;
            if (nnm[1] == NUM) flg = true;
        }
        return flg;
    }
    static void Main()
    {
        FastScanner sc = new FastScanner(Console.OpenStandardInput());
        int[] y = new int[MAX_N];
        int[] x = new int[MAX_N];
        for (int i = 0; i < MAX_N; i++)
        {
            y[i] = -1;
            x[i] = -1;
        }
        for (int i = 0; i < NUM; i++)
        {
            for (int j = 0; j < NUM; j++)
            {
                int cur = sc.nextInt();
                cur--;
                y[cur] = i;
                x[cur] = j;
            }
        }
        int[] tate = new int[NUM];
        int[] yoko = new int[NUM];
        int[] naname = new int[2];
        int N = sc.nextInt();
        bool flg = false;
        for (int i = 0; i < N; i++)
        {
            int cur = sc.nextInt();
            cur--;
            if (y[cur] == -1) continue;
            flg = check(tate, y, cur);
            if (flg) break;
            flg = check(yoko, x, cur);
            if (flg) break;
            flg = check_naname(naname, y, x, cur);
            if (flg) break;
        }
        if (flg)
        {
            Console.WriteLine("Yes");
        }
        else
        {
            Console.WriteLine("No");

        }
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