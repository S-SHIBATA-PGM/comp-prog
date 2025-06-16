' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim arr() As String = Console.ReadLine().Split()
        Dim S As String = Console.ReadLine()
        Const dot As String = "."
        Dim N As Integer = Integer.Parse(arr(0))
        Dim D As Integer = Integer.Parse(arr(1))
        Dim str As String() = Regex.Split(S, "\B")
        Dim strDot() As String = Filter(str, dot, True, CompareMethod.Text)
        Console.WriteLine(strDot.Length + D)
        Return
    End Sub
End Class