' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim arr() As String = Console.ReadLine().Split()
        Dim N As Integer = Integer.Parse(arr(0))
        Dim K As Integer = Integer.Parse(arr(1))
        Dim A() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Console.WriteLine(String.Join(" ", A.Where(
            Function(x) x Mod K = 0).Select(
            Function(x) (x / K).ToString()).ToList()))
        Return
    End Sub
End Class