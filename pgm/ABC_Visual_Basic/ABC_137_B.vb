' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim K, X As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        K = arr(0) : X = arr(1)
        Dim ans = new List(Of Integer)()
        For i As Integer = X - K + 1 To X + K - 1
            ans.Add(i)
        Next
        Console.WriteLine(String.join(" ", ans))
        Return
    End Sub
End Class