' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N, A, B As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        N = arr(0) : A = arr(1) : B = arr(2)
        Console.WriteLine(Math.min(N * A, B))
        Return
    End Sub
End Class