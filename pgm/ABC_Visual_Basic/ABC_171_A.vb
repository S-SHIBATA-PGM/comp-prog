' Imports System.Collections.Generic
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim a As Char = Console.ReadLine()
        Console.WriteLine(If(ASC(a) <= ASC("Z"), "A", "a"))
        Return
    End Sub
End Class
