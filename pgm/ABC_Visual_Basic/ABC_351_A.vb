' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Dim B() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Const one As Integer = 1
        Console.WriteLine(A.Sum() - B.Sum() + one)
        Return
    End Sub
End Class