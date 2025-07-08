' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim arr() As String = Console.ReadLine().Split()
        Dim A() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Const blank As String = ""
        Const space As String = " "
        Dim s As String = blank
        Dim N As Integer = Integer.Parse(arr(0))
        Dim K As Integer = Integer.Parse(arr(1))
        For i As Integer = N - K To N - 1
            Console.Write(s)
            Console.Write(A(i))
            s = space
        Next
        For i As Integer = 0 To N - K - 1
            Console.Write(s)
            Console.Write(A(i))
        Next
        Console.WriteLine()
        Return
    End Sub
End Class