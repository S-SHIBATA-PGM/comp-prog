' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Const cross As String = "x"
        Dim S() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(cross),
        Function(x As String) Integer.parse(x))
        Console.WriteLine(S(0) * S(1))
        Return
    End Sub
End Class