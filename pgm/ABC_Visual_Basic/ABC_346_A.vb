' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Integer.Parse(Console.ReadLine())
        Dim A() As Integer = Array.ConvertAll(
            Console.ReadLine().Split(),
            Function(x As String) Integer.Parse(x))
        Dim B(N - 2) As Integer
        For i As Integer = 0 To N - 2
            B(i) = A (i) * A(i + 1)
        Next
        Console.WriteLine(String.Join(" ", B))
        Return
    End Sub
End Class