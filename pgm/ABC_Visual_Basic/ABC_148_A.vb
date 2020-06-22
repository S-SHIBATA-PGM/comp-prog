' Imports System.Collections.Generic
Imports System.IO
Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim sc As New FastScanner(Console.OpenStandardInput())
        Dim AB() As Integer = sc.intArray(2)
        Dim ABC As New HashSet(Of Integer)({1, 2, 3})
        ABC.ExceptWith(AB)
        Console.WriteLine(ABC.ToArray()(0))
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
    Private Function enumerateChar(n As Integer) As Char()
        Dim a(n - 1) As Char
        For i As Integer = 0 To n - 1
            a(i) = nextChar()
        Next
        Return a
    End Function
    Public Function nextChar() As Char
        Dim b As Byte = 0
        Do
            b = read()
        Loop While (b < 33 OrElse 126 < b) AndAlso Not isEof
        Return Convert.ToChar(b)
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
    Public Function intArray(n As Integer) As Integer()
        Return enumerateInt(n)
    End Function
    Public Function longArray(n As Integer) As Long()
        Return enumerateLong(n)
    End Function
    Public Function charArray(n As Integer) As Char()
        Return enumerateChar(n)
    End Function
    Public Function Scan() As String
        Dim sb As New StringBuilder()
        Dim b As Char = nextChar()
        Do
            sb.Append(b)
            b = Convert.ToChar(read())
        Loop While Asc(b) >= 33 AndAlso Asc(b) <= 126
        Return sb.ToString()
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