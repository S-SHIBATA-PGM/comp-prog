Imports System.Collections.Generic

Class Main
    Public Shared Sub Main()
        Dim line As String
        line = Console.ReadLine()
        Dim S As New HashSet(Of Char)(line)
        Console.WriteLine(If(1 < S.Count, "Yes", "No"))
    End Sub
End Class