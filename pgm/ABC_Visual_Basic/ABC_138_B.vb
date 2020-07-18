' Imports System.Collections.Generic
Imports System.IO
' Imports System.Linq
Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim sc As New FastScanner(Console.OpenStandardInput())
        Dim N As Integer = sc.nextInt()
        Dim A() As Integer = sc.intArray(N)
        Console.WriteLine(1 / A.Sum(Function(Ai) 1D / Ai))
        Return
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
    Private Function enumerateChar(n As Integer) As Char()
        Dim a(n - 1) As Char
        For i As Integer = 0 To n - 1
            a(i) = nextChar()
        Next
        Return a
    End Function
    Private Function enumerateString(n As Integer) As String()
        Dim a(n - 1) As String
        For i As Integer = 0 To n - 1
            a(i) = nextString()
        Next
        Return a
    End Function
    Private Function enumerateInt(n As Integer) As Integer()
        Dim a(n - 1) As Integer
        For i As Integer = 0 To n - 1
            a(i) = nextInt()
        Next
        Return a
    End Function
    Private Function enumerateLong(n As Integer) As Long()
        Dim a(n - 1) As Long
        For i As Integer = 0 To n - 1
            a(i) = nextLong()
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
        Dim ng As Boolean = False
        Do
            b = read()
        Loop While b <> Asc("-"c) AndAlso (b < Asc("0"c) OrElse Asc("9"c) < b)
        If b = Asc("-"c)
            ng = true
            b = read()
        End If
        While True
            If b < Asc("0"c) OrElse Asc("9"c) < b
                Return If(ng, -ret, ret)
            Else
                ret = ret * 10 + b - Asc("0"c)
            End If
            b = read()
        End While
        Return ret
    End Function
    Public Function charArray(n As Integer) As Char()
        Return enumerateChar(n)
    End Function
    Public Function stringArray(n As Integer) As String()
        Return enumerateString(n)
    End Function
    Public Function intArray(n As Integer) As Integer()
        Return enumerateInt(n)
    End Function
    Public Function longArray(n As Integer) As Long()
        Return enumerateLong(n)
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