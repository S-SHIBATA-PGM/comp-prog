' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim S As String = Console.ReadLine()
        Dim T As String = Console.ReadLine()
        Console.WriteLine(If(S = T.Substring(0, T.Length - 1), "Yes", "No"))
        Return
    End Sub
End Class
