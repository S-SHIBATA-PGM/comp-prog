' Imports System.Collections.Generic
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim a = Console.ReadLine()
        Dim s = Console.ReadLine()
        Console.WriteLine(If(3200 <= a, s, "red"))
        Return
    End Sub
End Class