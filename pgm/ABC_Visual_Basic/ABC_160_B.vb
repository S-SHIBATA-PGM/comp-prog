' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim X As Integer = Console.ReadLine()
        Dim rm As Integer = X Mod 500
        Console.WriteLine(Math.Floor(X / 500) * 1000 + Math.Floor(rm / 5) * 5)
    End Sub
End Class
