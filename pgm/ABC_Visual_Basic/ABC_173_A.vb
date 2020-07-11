' Imports System.Collections.Generic
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer= Console.ReadLine()
        Console.WriteLine((1000 - N Mod 1000) Mod 1000)
        Return
    End Sub
End Class