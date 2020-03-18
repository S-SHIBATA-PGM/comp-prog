Class Main
    Public Shared Sub Main()
        Dim arr() As String
        arr = Split(Console.ReadLine())
        Dim S As New System.Collections.Generic.HashSet(Of Char)(arr(0))
        Console.WriteLine(If(1 < S.Count, "Yes", "No"))
    End Sub
End Class