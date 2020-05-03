' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim line As String = Console.ReadLine()
        Console.WriteLine(If(line.indexOf("7") = -1, "No", "Yes"))
    End Sub
End Class
