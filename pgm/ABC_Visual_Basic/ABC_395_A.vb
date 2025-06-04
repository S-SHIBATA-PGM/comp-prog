' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Ctype(Console.ReadLine(), Integer)
        Dim A() As Integer = Array.ConvertAll(
            Console.ReadLine().Split(),
            Function(x) Integer.Parse(x))
        Const Yes As String = "Yes"
        Const No As String = "No"
        For i As Integer = 1 To N - 1
            If A(i) <= A(i - 1) Then
                Console.WriteLine(No)
                Return
            End If
        Next
        Console.WriteLine(Yes)
        Return
    End Sub
End Class