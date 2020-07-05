' Imports System.Collections.Generic
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S = Console.ReadLine()
        Dim W = {"Sunny", "Cloudy", "Rainy"}
        Console.WriteLine(W((Array.IndexOf(W, S) + 1) Mod 3))
        Return
    End Sub
End Class