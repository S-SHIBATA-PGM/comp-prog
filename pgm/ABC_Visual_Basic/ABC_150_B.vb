Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Console.ReadLine()
        Dim S As String = Console.ReadLine()
        Dim reg As New System.Text.RegularExpressions.Regex("ABC")
        Console.WriteLine(reg.Matches(S).Count)
    End Sub
End Class
