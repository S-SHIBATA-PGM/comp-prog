' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim AB() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Const two As Integer = 2
        Dim A As Integer = AB(0)
        Dim B As Integer = AB(1)
        Console.WriteLine(Math.Pow(A + B, two))
        Return
    End Sub
End Class