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
        Dim S() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(a As String) Integer.Parse(a))
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim N As Integer = arr(zero)
        Dim X As Integer = arr(one)
        Console.WriteLine(S.Where(
        Function(b) b <= X).Sum())
        Return
    End Sub
End Class