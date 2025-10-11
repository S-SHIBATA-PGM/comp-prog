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
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim N As Integer = Integer.Parse(arr(zero))
        Dim L As Integer = Integer.Parse(arr(one))
        Dim A() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Console.WriteLine(A.Where(
            Function(x) x >= L).Count())
        Return
    End Sub
End Class