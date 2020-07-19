' Imports System.Collections.Generic
' Imports System.Globalization
Imports System.IO
' Imports System.Linq
Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim sc As New FastScanner(Console.OpenStandardInput())
        Dim N, K, M As Integer
        N = sc.nextInt()
        K = sc.nextInt()
        M = sc.nextInt()
        Dim A() As Integer = sc.intArray(N - 1)
        Dim accum As Integer = 0
        For Each Ai As Integer In A
            accum += Ai
        Next
        Dim ans As Integer = N * M - accum
        Console.WriteLine(If(ans < 0, 0, If(K < ans, -1, ans)))
    End Sub
End Class

' FastScanner start
Public Class FastScanner
    Public readonly str As Stream
    Private readonly buf(1024 - 1) As Byte
    Private len, ptr As Integer
    Public isEof As Boolean = False
    Public Sub New(stream As Stream)
        str = stream
        Exit Sub
    End Sub
    private Function enumerate(of T)(n As Integer, f as Func(Of T)) As T()
        Dim a(n - 1) As T
        For i As Integer = 0 To n - 1
            a(i) = f()
        Next
        Return a
    End Function
    Public Function nextChar() As Char
        Dim b As Byte = 0
        b = read()
        While Not isEof AndAlso (b < 33 OrElse 126 < b)
            b = read()
        End While
        Return Convert.ToChar(b)
    End Function
    public Function nextString() As String
        Dim b As Byte = 0
        Dim builder As New StringBuilder()
        b = read()
        While Not isEof AndAlso (b < 33 OrElse 126 < b)
            b = read()
        End While
        While Not isEof AndAlso 33 <= b AndAlso b <= 126
            builder.Append(Convert.ToChar(b))
            b = read()
        End While
        Return builder.ToString()
    End Function
    Public Function nextInt() As Integer
        Return if(isEof, Integer.MinValue, Ctype(nextLong(), Integer))
    End Function
    Public Function nextLong() As Long
        If isEof
            Return Long.MinValue
        End If
        Dim ret As Long = 0
        Dim b As Byte = 0
        Dim neg As Boolean = False
        Do
            b = read()
        Loop While b <> 45 AndAlso (b < 48 OrElse 57 < b)
        If b = 45
            neg = True
            b = read()
        End If
        While Not isEof AndAlso 48 <= b AndAlso b <= 57
            ret = ret * 10 + b - 48
            b = read()
        End While
        Return If(neg, -ret, ret)
    End Function
    Public Function nextDecimal() As Decimal
        If isEof
            Return Decimal.MinValue
        End If
        Dim ret As Decimal = 0D
        Dim div As Decimal = 1D
        Dim b As Byte = 0
        Dim neg As Boolean = False
        b = read()
        While Not isEof AndAlso (b < 48 OrElse 57 < b) AndAlso b <> 45 _
        AndAlso b <> 46
            b = read()
        End While
        If b = 45
            neg = True
            b = read()
        End If
        While Not isEof AndAlso 48 <= b AndAlso b <= 57
            ret = ret * 10 + b - 48
            b = read()
        End While
        If b = 46
            b = read()
        End If
        While Not isEof AndAlso 48 <= b AndAlso b <= 57
            div *= 10
            ret += (b - 48) / div
            b = read()
        End While
        If neg
            return -ret
        Else
            return ret
        End If
    End Function
    Public Function charArray(n As Integer) As Char()
        Return enumerate(n, AddressOf nextChar)
    End Function
    Public Function stringArray(n As Integer) As String()
        Return enumerate(n, AddressOf nextString)
    End Function
    Public Function intArray(n As Integer) As Integer()
        Return enumerate(n, AddressOf nextInt)
    End Function
    Public Function longArray(n As Integer) As Long()
        Return enumerate(n, AddressOf nextLong)
    End Function
    Public Function decimalArray(n As Integer) As Decimal()
        Return enumerate(n, AddressOf nextDecimal)
    End Function
    Private Function read() As Byte
        If isEof
            Return 0
        End If
        If ptr >= len
            ptr = 0
            len = str.Read(buf, 0, 1024)
            If (len <= 0)
                isEof = True
                Return 0
            End If
        End If
        Dim bk As Integer = ptr
        ptr += 1
        Return buf(bk)
    End function
End Class
' FastScanner end