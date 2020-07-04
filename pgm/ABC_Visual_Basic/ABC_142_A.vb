' Imports System.Collections.Generic
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer = Console.ReadLine()
        Console.WriteLine(Math.Floor((N + 1) / 2) / N)
        Return
    End Sub
End Class
